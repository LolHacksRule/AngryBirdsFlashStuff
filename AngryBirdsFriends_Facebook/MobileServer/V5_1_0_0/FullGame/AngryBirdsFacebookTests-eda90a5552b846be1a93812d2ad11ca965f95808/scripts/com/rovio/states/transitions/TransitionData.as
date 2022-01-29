package com.rovio.states.transitions
{
   public class TransitionData
   {
      
      public static const TRANSITION_TYPE_NONE:String = "none";
      
      public static const TRANSITION_TYPE_RUN:String = "run";
      
      public static const TRANSITION_TYPE_IN:String = "in";
      
      public static const TRANSITION_TYPE_OUT:String = "out";
       
      
      private var mStartLabel:String;
      
      private var mDefaultStartLabel:String;
      
      private var mEndLabel:String;
      
      private var mExitLabel:String;
      
      private var mType:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function TransitionData(startLabel:String = "", endLabel:String = "", exitLabel:String = "", type:String = "none", loop:Boolean = false, stageQuality:String = "best")
      {
         super();
         this.mStartLabel = startLabel;
         this.mType = type;
         this.mEndLabel = endLabel;
         this.mExitLabel = exitLabel;
         this.loop = loop;
         this.stageQuality = stageQuality;
         this.solveDefaultStartLabel();
      }
      
      public function get startLabel() : String
      {
         return this.mStartLabel;
      }
      
      public function set startLabel(value:String) : void
      {
         this.mStartLabel = value;
         this.solveDefaultStartLabel();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.mDefaultStartLabel;
      }
      
      public function get endLabel() : String
      {
         return this.mEndLabel;
      }
      
      public function set endLabel(value:String) : void
      {
         this.mEndLabel = value;
      }
      
      public function get exitLabel() : String
      {
         return this.mExitLabel;
      }
      
      public function set exitLabel(value:String) : void
      {
         this.mExitLabel = value;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function set type(value:String) : void
      {
         this.mType = value;
         this.solveDefaultStartLabel();
      }
      
      protected function solveDefaultStartLabel() : void
      {
         this.mDefaultStartLabel = "";
         if(this.mType == TRANSITION_TYPE_NONE || this.mStartLabel == "")
         {
            return;
         }
         switch(this.mType)
         {
            case TRANSITION_TYPE_RUN:
               this.mDefaultStartLabel = LabelTypes.generateStartRunLabel();
               break;
            case TRANSITION_TYPE_IN:
               this.mDefaultStartLabel = LabelTypes.generateStartTransitionInDefaultLabel();
               break;
            case TRANSITION_TYPE_OUT:
               this.mDefaultStartLabel = LabelTypes.generateStartTransitionOutDefaultLabel();
         }
      }
      
      public function clone() : TransitionData
      {
         return new TransitionData(this.mStartLabel,this.mEndLabel,this.mExitLabel,this.mType,this.loop);
      }
   }
}
