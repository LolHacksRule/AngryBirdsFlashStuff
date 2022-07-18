package §1!i§
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §6"#§
   {
       
      
      public function §6"#§()
      {
         super();
      }
      
      public static function §7s§(param1:TextField, param2:int, param3:int = -1, param4:int = -1) : void
      {
         var _loc5_:int = param2;
         var _loc6_:TextFormat;
         (_loc6_ = param1.getTextFormat()).size = _loc5_;
         param1.setTextFormat(_loc6_);
         while(param4 == -1 ? Boolean(false) : Boolean(param1.textHeight > param4))
         {
            _loc6_.size = int(_loc6_.size) - 1;
            param1.setTextFormat(_loc6_);
         }
      }
   }
}
