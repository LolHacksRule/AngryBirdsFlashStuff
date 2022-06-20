package org.flexunit.utils
{
   import flash.utils.getQualifiedClassName;
   
   public class ClassNameUtil
   {
       
      
      public function ClassNameUtil()
      {
         super();
      }
      
      public static function getLoggerFriendlyClassName(instanceOrClass:Object) : String
      {
         var periodReplace:RegExp = /\./g;
         var colonReplace:RegExp = /::/g;
         var dollarSignReplace:RegExp = /\$/g;
         var escapedName:String = getQualifiedClassName(instanceOrClass);
         escapedName = escapedName.replace(periodReplace,"_");
         escapedName = escapedName.replace(colonReplace,"_");
         return escapedName.replace(dollarSignReplace,"_");
      }
   }
}
