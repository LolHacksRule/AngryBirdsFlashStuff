package §9"U§
{
   import §'"A§.§#"G§;
   import §'"A§.§#F§;
   import §?!u§.§?!m§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §!!K§ extends EventDispatcher
   {
      
      public static const §7!;§:String = "GalacticBundle";
      
      public static const §^"e§:String = "GalacticBundleRenew";
      
      public static const §=!J§:int = 3;
       
      
      private var §-!^§:Dictionary;
      
      public function §!!K§()
      {
         super();
         this.§-!^§ = new Dictionary();
      }
      
      public function §8!d§() : Vector.<§#F§>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§#F§> = new Vector.<§#F§>(0);
         for(_loc2_ in this.§-!^§)
         {
            _loc1_.push(this.§-!^§[_loc2_]);
         }
         return _loc1_;
      }
      
      public function §-"w§(param1:String) : int
      {
         if(this.§-!^§[param1])
         {
            return §#F§(this.§-!^§[param1]).daysLeft;
         }
         return -1;
      }
      
      public function §-!`§(param1:String) : Vector.<§#"G§>
      {
         if(this.§-!^§[param1])
         {
            return §#F§(this.§-!^§[param1]).content;
         }
         return null;
      }
      
      public function §#!n§(param1:String) : §#F§
      {
         var _loc2_:§#F§ = null;
         var _loc3_:* = null;
         var _loc4_:§#"G§ = null;
         var _loc5_:int = 0;
         for(_loc3_ in this.§-!^§)
         {
            _loc2_ = §#F§(this.§-!^§[_loc3_]);
            _loc5_ = 0;
            while(_loc5_ < _loc2_.content.length)
            {
               if((_loc4_ = _loc2_.content[_loc5_]).§6!6§.toLowerCase() == param1.toLowerCase())
               {
                  return _loc2_;
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §;I§(param1:String) : Boolean
      {
         return this.§-!^§[param1] != null;
      }
      
      public function §9"h§(param1:Object) : void
      {
         var _loc2_:§#F§ = null;
         var _loc3_:Object = null;
         for each(_loc3_ in param1.subscriptions)
         {
            if(_loc3_.i)
            {
               _loc2_ = new §#F§(_loc3_.i,_loc3_.d);
               this.§;"Y§(_loc2_);
            }
         }
      }
      
      public function update(param1:Vector.<§#F§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§;"Y§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §;"Y§(param1:§#F§) : void
      {
         this.§-!^§[param1.id] = param1;
         dispatchEvent(new §?!m§(§?!m§.§6,§,param1.id,param1.daysLeft));
      }
      
      public function §1"O§(param1:String, param2:int = 0) : Boolean
      {
         if(this.§-!^§[param1])
         {
            §#F§(this.§-!^§[param1]).daysLeft = param2;
            dispatchEvent(new §?!m§(§?!m§.§6,§,param1,param2));
            return true;
         }
         return false;
      }
      
      public function §<"$§(param1:String) : Boolean
      {
         var _loc2_:§#F§ = this.§#!n§(param1);
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
