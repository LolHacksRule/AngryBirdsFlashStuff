package §`"8§
{
   import §1!o§.§?!f§;
   import §@b§.§%"U§;
   import §@b§.§`"5§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §^x§ extends EventDispatcher
   {
      
      public static const §,!%§:String = "GalacticBundle";
      
      public static const §%4§:String = "GalacticBundleRenew";
      
      public static const §!!u§:int = 3;
       
      
      private var §=!+§:Dictionary;
      
      public function §^x§()
      {
         super();
         this.§=!+§ = new Dictionary();
      }
      
      public function §["I§() : Vector.<§`"5§>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§`"5§> = new Vector.<§`"5§>(0);
         for(_loc2_ in this.§=!+§)
         {
            _loc1_.push(this.§=!+§[_loc2_]);
         }
         return _loc1_;
      }
      
      public function §-o§(param1:String) : int
      {
         if(this.§=!+§[param1])
         {
            return §`"5§(this.§=!+§[param1]).daysLeft;
         }
         return -1;
      }
      
      public function §9#§(param1:String) : Vector.<§%"U§>
      {
         if(this.§=!+§[param1])
         {
            return §`"5§(this.§=!+§[param1]).content;
         }
         return null;
      }
      
      public function §@!P§(param1:String) : §`"5§
      {
         var _loc2_:§`"5§ = null;
         var _loc3_:* = null;
         var _loc4_:§%"U§ = null;
         var _loc5_:int = 0;
         for(_loc3_ in this.§=!+§)
         {
            _loc2_ = §`"5§(this.§=!+§[_loc3_]);
            _loc5_ = 0;
            while(_loc5_ < _loc2_.content.length)
            {
               if((_loc4_ = _loc2_.content[_loc5_]).§ !T§.toLowerCase() == param1.toLowerCase())
               {
                  return _loc2_;
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §14§(param1:String) : Boolean
      {
         return this.§=!+§[param1] != null;
      }
      
      public function §#"W§(param1:Object) : void
      {
         var _loc2_:§`"5§ = null;
         var _loc3_:Object = null;
         for each(_loc3_ in param1.subscriptions)
         {
            if(_loc3_.i)
            {
               _loc2_ = new §`"5§(_loc3_.i,_loc3_.d);
               this.§2!A§(_loc2_);
            }
         }
      }
      
      public function update(param1:Vector.<§`"5§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§2!A§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2!A§(param1:§`"5§) : void
      {
         this.§=!+§[param1.id] = param1;
         dispatchEvent(new §?!f§(§?!f§.§4f§,param1.id,param1.daysLeft));
      }
      
      public function §[!J§(param1:String, param2:int = 0) : Boolean
      {
         if(this.§=!+§[param1])
         {
            §`"5§(this.§=!+§[param1]).daysLeft = param2;
            dispatchEvent(new §?!f§(§?!f§.§4f§,param1,param2));
            return true;
         }
         return false;
      }
      
      public function §#%§(param1:String) : Boolean
      {
         var _loc2_:§`"5§ = this.§@!P§(param1);
         var _loc3_:int = -1;
         if(_loc2_)
         {
            _loc3_ = _loc2_.daysLeft;
         }
         if(_loc3_ >= 0)
         {
            return true;
         }
         return false;
      }
   }
}
