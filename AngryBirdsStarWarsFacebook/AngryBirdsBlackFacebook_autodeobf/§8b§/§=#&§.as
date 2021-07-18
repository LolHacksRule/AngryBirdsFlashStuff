package §8b§
{
   import §,"N§.§%"[§;
   import §,"N§.§@#B§;
   import §;#Q§.§>#I§;
   import §^"?§.§["i§;
   
   public class §=#&§ implements §>#I§
   {
       
      
      public var items:Vector.<§["i§>;
      
      public function §=#&§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         _loc2_.§?,§ = param1.currency;
         this.items = new Vector.<§["i§>();
         if(param1.prices)
         {
            this.items = this.§]#M§(param1.id,param1.prices);
         }
      }
      
      protected function §]#M§(param1:String, param2:Array) : Vector.<§["i§>
      {
         var _loc3_:Vector.<§["i§> = new Vector.<§["i§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc3_.push(new §["i§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
