package §7I§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §<!U§
   {
       
      
      public var mName:String;
      
      public var §8F§:int;
      
      public var §2!D§:Number = 1;
      
      private var §^e§:Vector.<§%'§>;
      
      private var §78§:Number;
      
      public function §<!U§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§8F§ = param2;
         this.§2!D§ = param3;
         this.§78§ = this.§2!D§;
         this.§^e§ = new Vector.<§%'§>();
      }
      
      public function §;!L§() : Boolean
      {
         return this.§^e§.length < this.§8F§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §%'§
      {
         if(param3 < 0)
         {
            param3 = this.§78§;
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            return null;
         }
         var _loc6_:§%'§ = new §%'§(_loc5_,this.§4!S§);
         if(this.§2!D§ == 0)
         {
            _loc6_.§;!!§();
         }
         this.§^e§.push(_loc6_);
         return _loc6_;
      }
      
      private function §4!S§(param1:§%'§) : void
      {
         var _loc2_:Vector.<§%'§> = null;
         var _loc3_:§%'§ = null;
         if(this.§^e§.indexOf(param1) > -1)
         {
            _loc2_ = this.§^e§.splice(this.§^e§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§[!1§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §0M§() : Boolean
      {
         return this.§^e§.length > 0;
      }
      
      public function §[p§() : void
      {
         var _loc1_:§%'§ = null;
         while(this.§^e§.length > 0)
         {
            _loc1_ = this.§^e§[0];
            _loc1_.stop();
            _loc1_.§3!S§();
         }
      }
      
      public function §]3§() : void
      {
         var _loc1_:§%'§ = null;
         this.§2!D§ = 0;
         for each(_loc1_ in this.§^e§)
         {
            _loc1_.§;!!§();
         }
      }
      
      public function §;!&§() : void
      {
         var _loc1_:§%'§ = null;
         this.§2!D§ = this.§78§;
         for each(_loc1_ in this.§^e§)
         {
            _loc1_.§`[§();
         }
      }
   }
}
