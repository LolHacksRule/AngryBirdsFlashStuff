package org.hamcrest
{
   public class StringDescription extends BaseDescription
   {
       
      
      private var _out:String;
      
      public function StringDescription()
      {
         super();
         clear();
      }
      
      public static function toString(selfDescribing:SelfDescribing) : String
      {
         return new StringDescription().appendDescriptionOf(selfDescribing).toString();
      }
      
      override protected function append(string:Object) : void
      {
         _out += String(string);
      }
      
      override public function toString() : String
      {
         return _out;
      }
      
      public function clear() : void
      {
         _out = "";
      }
   }
}
