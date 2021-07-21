package §1?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8F§
   {
       
      
      public var mName:String;
      
      public var §0!p§:int;
      
      public var §3A§:Number = 1;
      
      private var §;"§:Vector.<§#!C§>;
      
      private var §&!5§:Number;
      
      public function §8F§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§0!p§ = param2;
         this.§3A§ = param3;
         this.§&!5§ = this.§3A§;
         this.§;"§ = new Vector.<§#!C§>();
      }
      
      public function §6!C§() : Boolean
      {
         return this.§;"§.length < this.§0!p§;
      }
      
      public function §4c§(param1:Sound, param2:int = 0, param3:Number = -1) : §#!C§
      {
         if(param3 < 0)
         {
            param3 = this.§&!5§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§#!C§ = new §#!C§(_loc5_,this.§!!%§);
         if(this.§3A§ == 0)
         {
            _loc6_.§<!>§();
         }
         this.§;"§.push(_loc6_);
         return _loc6_;
      }
      
      private function §!!%§(param1:§#!C§) : void
      {
         var _loc2_:Vector.<§#!C§> = null;
         var _loc3_:§#!C§ = null;
         if(this.§;"§.indexOf(param1) > -1)
         {
            _loc2_ = this.§;"§.splice(this.§;"§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §6e§() : Boolean
      {
         return this.§;"§.length > 0;
      }
      
      public function §'!Q§() : void
      {
         var _loc1_:§#!C§ = null;
         while(this.§;"§.length > 0)
         {
            _loc1_ = this.§;"§[0];
            _loc1_.stop();
            _loc1_.§[s§();
         }
      }
      
      public function §!!H§() : void
      {
         var _loc1_:§#!C§ = null;
         this.§3A§ = 0;
         for each(_loc1_ in this.§;"§)
         {
            _loc1_.§<!>§();
         }
      }
      
      public function §=!a§() : void
      {
         var _loc1_:§#!C§ = null;
         this.§3A§ = this.§&!5§;
         for each(_loc1_ in this.§;"§)
         {
            _loc1_.§6h§();
         }
      }
   }
}
