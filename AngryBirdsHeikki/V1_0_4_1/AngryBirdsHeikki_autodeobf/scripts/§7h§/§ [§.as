package §7h§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § [§
   {
       
      
      public var mName:String;
      
      public var §^!c§:int;
      
      public var §>!b§:Number = 1;
      
      private var §'!0§:Vector.<§4!O§>;
      
      private var §]!=§:Number;
      
      public function § [§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§^!c§ = param2;
         this.§>!b§ = param3;
         this.§]!=§ = this.§>!b§;
         this.§'!0§ = new Vector.<§4!O§>();
      }
      
      public function §;u§() : Boolean
      {
         return this.§'!0§.length < this.§^!c§;
      }
      
      public function §#W§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §4!O§
      {
         if(param3 < 0)
         {
            param3 = this.§]!=§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§4!O§ = new §4!O§(_loc6_,this.§#!+§,param4);
         if(this.§>!b§ == 0)
         {
            _loc7_.§!!K§();
         }
         this.§'!0§.push(_loc7_);
         return _loc7_;
      }
      
      private function §#!+§(param1:§4!O§) : void
      {
         var _loc2_:Vector.<§4!O§> = null;
         var _loc3_:§4!O§ = null;
         if(this.§'!0§.indexOf(param1) > -1)
         {
            _loc2_ = this.§'!0§.splice(this.§'!0§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§ q§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §2Z§() : Boolean
      {
         return this.§'!0§.length > 0;
      }
      
      public function §9!0§() : void
      {
         var _loc1_:§4!O§ = null;
         while(this.§'!0§.length > 0)
         {
            _loc1_ = this.§'!0§[0];
            _loc1_.stop();
            _loc1_.§'!2§();
         }
      }
      
      public function §5!1§() : void
      {
         var _loc1_:§4!O§ = null;
         this.§>!b§ = 0;
         for each(_loc1_ in this.§'!0§)
         {
            _loc1_.§!!K§();
         }
      }
      
      public function §8L§() : void
      {
         var _loc1_:§4!O§ = null;
         this.§>!b§ = this.§]!=§;
         for each(_loc1_ in this.§'!0§)
         {
            _loc1_.§?!$§();
         }
      }
   }
}
