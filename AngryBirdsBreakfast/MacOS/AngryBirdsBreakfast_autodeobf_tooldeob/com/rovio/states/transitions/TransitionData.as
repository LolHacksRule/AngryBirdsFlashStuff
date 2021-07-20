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
      
      public function TransitionData(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.mStartLabel = param1;
         this.mType = param4;
         this.mEndLabel = param2;
         this.mExitLabel = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.solveDefaultStartLabel();
      }
      
      public function get startLabel() : String
      {
         return this.mStartLabel;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.mStartLabel = param1;
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
      
      public function set endLabel(param1:String) : void
      {
         this.mEndLabel = param1;
      }
      
      public function get exitLabel() : String
      {
         return this.mExitLabel;
      }
      
      public function set exitLabel(param1:String) : void
      {
         this.mExitLabel = param1;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function set type(param1:String) : void
      {
         this.mType = param1;
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
