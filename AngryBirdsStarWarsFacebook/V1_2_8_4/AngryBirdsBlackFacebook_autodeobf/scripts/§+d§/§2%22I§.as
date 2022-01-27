package §+d§
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §2"I§
   {
       
      
      public function §2"I§()
      {
         super();
      }
      
      public static function §;"%§(param1:TextField, param2:int, param3:int = -1, param4:int = -1) : void
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
