# Visual Production Smoke Tests

Run these after changing routing or an upstream integration.

## 1. PDF report
Prompt: Create a two-page professional report with one comparison table and one evidence-led callout.
Expected: route to document production, then pdf-design-critic.
Pass: no clipping; hierarchy is obvious; table scans cleanly; no accidental dead space; critic stops after bounded QA.

## 2. Formal architecture diagram
Prompt: Draw Document Ingestion → Evidence Gate → Controller → Domain Agent → Verification → Visual Output as a publication-ready architecture diagram.
Expected: prefer Agentic Mermaid.
Pass: deterministic source exists; labels and arrows verify; SVG remains readable at intended PDF size.

## 3. Free-form/editable diagram
Prompt: Create an editable whiteboard-style concept map with irregular grouping.
Expected: diagram-maker / Excalidraw.
Pass: output remains editable and grouping is legible.

## 4. Product UI
Prompt: Design and critique a student writing dashboard with progress, assignments, and feedback.
Expected: Impeccable.
Pass: PRODUCT truth is separated from surface design; deterministic detector/critique is used when available; bounded repair.

## 5. Combined report + diagram
Expected: choose diagram tool by diagram semantics, embed into Kami, then run pdf-design-critic on final composition.
Pass: source and caption are preserved; the final PDF passes the report checks above, including final-size diagram readability and bounded QA.

## 6. Negative routing
Prompt: Explain a concept in ordinary chat.
Expected: no visual-production skill.
Pass: answer the question without invoking visual-document tooling.
