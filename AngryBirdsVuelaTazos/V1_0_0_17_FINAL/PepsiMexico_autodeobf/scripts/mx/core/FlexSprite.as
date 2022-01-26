package mx.core
{
   import flash.display.Sprite;
   import mx.utils.NameUtil;
   
   use namespace mx_internal;
   
   public class FlexSprite extends Sprite
   {
      
      mx_internal static const VERSION:String = "4.5.1.21328";
       
      
      public function FlexSprite()
      {
         super();
         try
         {
            name = NameUtil.createUniqueName(this);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function toString() : String
      {
         return NameUtil.displayObjectToString(this);
      }
   }
}
