using TypeSpec.OpenAPI;

namespace VoiceLive;

union ContentPartType {
  string,
  input_text: "input_text",
  input_audio: "input_audio",
  text: "text",
  audio: "audio",
}

@discriminator("type")
model ContentPart {
  type: string;
}

model RequestTextContentPart extends ContentPart {
  type: "input_text";
  text?: string;
}

model RequestAudioContentPart extends ContentPart {
  type: "input_audio";
  transcript?: string;
}

model ResponseTextContentPart extends ContentPart {
  type: "text";
  text?: string;
}

model ResponseAudioContentPart extends ContentPart {
  type: "audio";
  transcript?: string;
}
