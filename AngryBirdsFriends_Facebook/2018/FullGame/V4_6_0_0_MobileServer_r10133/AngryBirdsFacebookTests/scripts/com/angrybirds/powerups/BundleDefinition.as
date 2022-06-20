package com.angrybirds.powerups
{
   public class BundleDefinition
   {
       
      
      private var mPrettyName:String;
      
      private var mDescription:String;
      
      private var mDefinition:String;
      
      public function BundleDefinition(prettyName:String, description:String, definition:String)
      {
         super();
         this.mPrettyName = prettyName;
         this.mDescription = description;
         this.mDefinition = definition;
      }
      
      public function get definition() : String
      {
         return this.mDefinition;
      }
      
      public function get description() : String
      {
         return this.mDescription;
      }
      
      public function get prettyName() : String
      {
         return this.mPrettyName;
      }
   }
}
