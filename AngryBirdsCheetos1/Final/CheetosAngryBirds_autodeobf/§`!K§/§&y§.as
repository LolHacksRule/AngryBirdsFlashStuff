package §`!K§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&y§
   {
       
      
      public var mName:String;
      
      public var §`r§:int;
      
      public var §8K§:Number = 1;
      
      private var §4!]§:Vector.<§<9§>;
      
      private var §>!S§:Number;
      
      public function §&y§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§`r§ = param2;
         this.§8K§ = param3;
         this.§>!S§ = this.§8K§;
         this.§4!]§ = new Vector.<§<9§>();
      }
      
      public function §>q§() : Boolean
      {
         return this.§4!]§.length < this.§`r§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §<9§
      {
         if(param3 < 0)
         {
            param3 = this.§>!S§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§<9§ = new §<9§(_loc5_,this.§3<§);
         if(this.§8K§ == 0)
         {
            _loc6_.§+!;§();
         }
         this.§4!]§.push(_loc6_);
         return _loc6_;
      }
      
      private function §3<§(param1:§<9§) : void
      {
         var _loc2_:Vector.<§<9§> = null;
         var _loc3_:§<9§ = null;
         if(this.§4!]§.indexOf(param1) > -1)
         {
            _loc2_ = this.§4!]§.splice(this.§4!]§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§4b§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §#I§() : Boolean
      {
         return this.§4!]§.length > 0;
      }
      
      public function § &§() : void
      {
         var _loc1_:§<9§ = null;
         while(this.§4!]§.length > 0)
         {
            _loc1_ = this.§4!]§[0];
            _loc1_.stop();
            _loc1_.§+q§();
         }
      }
      
      public function § §() : void
      {
         var _loc1_:§<9§ = null;
         this.§8K§ = 0;
         for each(_loc1_ in this.§4!]§)
         {
            _loc1_.§+!;§();
         }
      }
      
      public function §@!N§() : void
      {
         var _loc1_:§<9§ = null;
         this.§8K§ = this.§>!S§;
         for each(_loc1_ in this.§4!]§)
         {
            _loc1_.§>! §();
         }
      }
   }
}
