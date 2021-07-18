package §,"N§
{
   import §!"W§.§[!y§;
   import §6!H§.§5!t§;
   import §6!H§.§9!!§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §<!9§ extends EventDispatcher
   {
      
      public static const § v§:String = "GalacticBundle";
      
      public static const §^#T§:String = "GalacticBundleRenew";
      
      public static const §3!&§:int = 3;
       
      
      private var §`K§:Dictionary;
      
      public function §<!9§()
      {
         super();
         this.§`K§ = new Dictionary();
      }
      
      public function §&!U§() : Vector.<§9!!§>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§9!!§> = new Vector.<§9!!§>(0);
         for(_loc2_ in this.§`K§)
         {
            _loc1_.push(this.§`K§[_loc2_]);
         }
         return _loc1_;
      }
      
      public function §@#3§(param1:String) : int
      {
         if(this.§`K§[param1])
         {
            return §9!!§(this.§`K§[param1]).daysLeft;
         }
         return -1;
      }
      
      public function §##B§(param1:String) : Vector.<§5!t§>
      {
         if(this.§`K§[param1])
         {
            return §9!!§(this.§`K§[param1]).content;
         }
         return null;
      }
      
      public function §"!B§(param1:String) : §9!!§
      {
         var _loc2_:§9!!§ = null;
         var _loc3_:* = null;
         var _loc4_:§5!t§ = null;
         var _loc5_:int = 0;
         for(_loc3_ in this.§`K§)
         {
            _loc2_ = §9!!§(this.§`K§[_loc3_]);
            _loc5_ = 0;
            while(_loc5_ < _loc2_.content.length)
            {
               if((_loc4_ = _loc2_.content[_loc5_]).§1@§.toLowerCase() == param1.toLowerCase())
               {
                  return _loc2_;
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §5!C§(param1:String) : Boolean
      {
         return this.§`K§[param1] != null;
      }
      
      public function §7"R§(param1:Object) : void
      {
         var _loc2_:§9!!§ = null;
         var _loc3_:Object = null;
         for each(_loc3_ in param1.subscriptions)
         {
            if(_loc3_.i)
            {
               _loc2_ = new §9!!§(_loc3_.i,_loc3_.d);
               this.§1D§(_loc2_);
            }
         }
      }
      
      public function update(param1:Vector.<§9!!§>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1D§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §1D§(param1:§9!!§) : void
      {
         this.§`K§[param1.id] = param1;
         dispatchEvent(new §[!y§(§[!y§.§1c§,param1.id,param1.daysLeft));
      }
      
      public function §%"j§(param1:String, param2:int = 0) : Boolean
      {
         if(this.§`K§[param1])
         {
            §9!!§(this.§`K§[param1]).daysLeft = param2;
            dispatchEvent(new §[!y§(§[!y§.§1c§,param1,param2));
            return true;
         }
         return false;
      }
      
      public function §,#a§(param1:String) : Boolean
      {
         var _loc2_:§9!!§ = this.§"!B§(param1);
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
