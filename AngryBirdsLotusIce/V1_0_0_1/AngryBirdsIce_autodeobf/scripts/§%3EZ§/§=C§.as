package §>Z§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=C§
   {
       
      
      public var mName:String;
      
      public var §&!#§:int;
      
      public var §!T§:Number = 1;
      
      private var §9L§:Vector.<§`!A§>;
      
      private var §];§:Number;
      
      public function §=C§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§&!#§ = param2;
         this.§!T§ = param3;
         this.§];§ = this.§!T§;
         this.§9L§ = new Vector.<§`!A§>();
      }
      
      public function §&c§() : Boolean
      {
         return this.§9L§.length < this.§&!#§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §`!A§
      {
         if(param3 < 0)
         {
            param3 = this.§];§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§`!A§ = new §`!A§(_loc5_,this.§=Z§);
         if(this.§!T§ == 0)
         {
            _loc6_.§@%§();
         }
         this.§9L§.push(_loc6_);
         return _loc6_;
      }
      
      private function §=Z§(param1:§`!A§) : void
      {
         var _loc2_:Vector.<§`!A§> = null;
         var _loc3_:§`!A§ = null;
         if(this.§9L§.indexOf(param1) > -1)
         {
            _loc2_ = this.§9L§.splice(this.§9L§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §'!,§() : Boolean
      {
         return this.§9L§.length > 0;
      }
      
      public function §'T§() : void
      {
         var _loc1_:§`!A§ = null;
         while(this.§9L§.length > 0)
         {
            _loc1_ = this.§9L§[0];
            _loc1_.stop();
            _loc1_.§>l§();
         }
      }
      
      public function §?!,§() : void
      {
         var _loc1_:§`!A§ = null;
         this.§!T§ = 0;
         for each(_loc1_ in this.§9L§)
         {
            _loc1_.§@%§();
         }
      }
      
      public function §-!4§() : void
      {
         var _loc1_:§`!A§ = null;
         this.§!T§ = this.§];§;
         for each(_loc1_ in this.§9L§)
         {
            _loc1_.§2g§();
         }
      }
   }
}
