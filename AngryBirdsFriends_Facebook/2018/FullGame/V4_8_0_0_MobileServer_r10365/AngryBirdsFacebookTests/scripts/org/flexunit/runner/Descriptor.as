package org.flexunit.runner
{
   public class Descriptor
   {
       
      
      public var path:String;
      
      public var suite:String;
      
      public var method:String;
      
      public function Descriptor(path:String = "", suite:String = "", method:String = "")
      {
         super();
         this.path = path;
         this.suite = suite;
         this.method = method;
      }
   }
}
