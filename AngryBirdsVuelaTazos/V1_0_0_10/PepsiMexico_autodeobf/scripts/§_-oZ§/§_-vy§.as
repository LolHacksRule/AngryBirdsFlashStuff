package §_-oZ§
{
   import §_-ec§.§_-GK§;
   import §_-ot§.§_-o6§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-vy§
   {
       
      
      public var mName:String;
      
      public var §_-7A§:int;
      
      public var §_-YY§:Number = 1;
      
      private var §_-hg§:Vector.<§_-Yw§>;
      
      public function §_-vy§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§_-7A§ = param2;
         this.§_-YY§ = param3;
         this.§_-hg§ = new Vector.<§_-Yw§>();
      }
      
      public function §_-dI§() : Boolean
      {
         return this.§_-hg§.length < this.§_-7A§;
      }
      
      public function §_-A3§(param1:String, param2:int = 0, param3:Number = -1) : §_-Yw§
      {
         if(param3 < 0)
         {
            param3 = this.§_-YY§;
         }
         var _loc4_:Class;
         if(!(_loc4_ = §_-GK§.§_-dR§(param1,false) as Class))
         {
            §_-o6§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
            return null;
         }
         var _loc5_:Sound = new _loc4_();
         var _loc6_:SoundTransform = new SoundTransform(param3);
         var _loc7_:SoundChannel = _loc5_.play(0,param2,_loc6_);
         var _loc8_:§_-Yw§ = new §_-Yw§(param1,_loc7_,_loc5_,this.§_-G1§);
         this.§_-hg§.push(_loc8_);
         return _loc8_;
      }
      
      private function §_-G1§(param1:§_-Yw§) : void
      {
         var _loc2_:Vector.<§_-Yw§> = null;
         var _loc3_:§_-Yw§ = null;
         if(this.§_-hg§.indexOf(param1) > -1)
         {
            _loc2_ = this.§_-hg§.splice(this.§_-hg§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.§_-wT§();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §_-sE§() : Boolean
      {
         return this.§_-hg§.length > 0;
      }
      
      public function §_-YQ§() : void
      {
         var _loc1_:§_-Yw§ = null;
         while(this.§_-hg§.length > 0)
         {
            _loc1_ = this.§_-hg§[0];
            _loc1_.§_-cY§.stop();
            _loc1_.§_-LQ§();
         }
      }
   }
}
