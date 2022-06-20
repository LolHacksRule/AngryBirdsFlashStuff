package com.angrybirds.tournament
{
   public class ReplaceStatePair
   {
       
      
      public var stateName:String;
      
      public var replaceState:Class;
      
      public function ReplaceStatePair(oldStateName:String, newReplaceState:Class)
      {
         super();
         this.stateName = oldStateName;
         this.replaceState = newReplaceState;
      }
   }
}
