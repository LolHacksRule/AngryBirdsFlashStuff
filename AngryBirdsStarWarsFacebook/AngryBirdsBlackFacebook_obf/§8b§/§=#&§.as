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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(!(_loc3_ && param1))
         {
            _loc2_.§?,§ = param1.currency;
            loop0:
            while(true)
            {
               this.items = new Vector.<§["i§>();
               while(param1.prices)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  addr75:
                  if(_loc4_ || param1)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      protected function §]#M§(param1:String, param2:Array) : Vector.<§["i§>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§["i§> = new Vector.<§["i§>();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= param2.length)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc3_.push(new §["i§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t));
            }
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
