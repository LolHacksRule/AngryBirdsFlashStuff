package org.flexunit.runner
{
   public interface IDescription
   {
       
      
      function get children() : Array;
      
      function get displayName() : String;
      
      function get isSuite() : Boolean;
      
      function get isTest() : Boolean;
      
      function get testCount() : int;
      
      function getAllMetadata() : Array;
      
      function get isInstance() : Boolean;
      
      function get isEmpty() : Boolean;
      
      function addChild(param1:IDescription) : void;
      
      function childlessCopy() : IDescription;
      
      function equals(param1:Object) : Boolean;
   }
}
