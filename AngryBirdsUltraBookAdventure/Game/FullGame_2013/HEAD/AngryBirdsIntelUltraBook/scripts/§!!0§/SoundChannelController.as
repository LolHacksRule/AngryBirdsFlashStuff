package §!!0§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §=!K§:int;
      
      public var §@`§:Number = 1;
      
      private var §1!i§:Vector.<§?!j§>;
      
      private var §-!c§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§=!K§ = param2;
         this.§@`§ = param3;
         this.§-!c§ = this.§@`§;
         this.§1!i§ = new Vector.<§?!j§>();
      }
      
      public function §0!S§() : Boolean
      {
         return this.§1!i§.length < this.§=!K§;
      }
      
      public function §-!h§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §?!j§
      {
         if(param3 < 0)
         {
            param3 = this.§-!c§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc7_:§?!j§ = new §?!j§(_loc6_,this.§%Y§,param4);
         if(this.§@`§ == 0)
         {
            _loc7_.§?I§();
         }
         this.§1!i§.push(_loc7_);
         return _loc7_;
      }
      
      private function §%Y§(param1:§?!j§) : void
      {
         var _loc2_:Vector.<§?!j§> = null;
         var _loc3_:§?!j§ = null;
         if(this.§1!i§.indexOf(param1) > -1)
         {
            _loc2_ = this.§1!i§.splice(this.§1!i§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §?§() : Boolean
      {
         return this.§1!i§.length > 0;
      }
      
      public function §%!V§() : void
      {
         var _loc1_:§?!j§ = null;
         while(this.§1!i§.length > 0)
         {
            _loc1_ = this.§1!i§[0];
            _loc1_.stop();
            _loc1_.§&p§();
         }
      }
      
      public function §!§() : void
      {
         var _loc1_:§?!j§ = null;
         this.§@`§ = 0;
         for each(_loc1_ in this.§1!i§)
         {
            _loc1_.§?I§();
         }
      }
      
      public function §&!,§() : void
      {
         var _loc1_:§?!j§ = null;
         this.§@`§ = this.§-!c§;
         for each(_loc1_ in this.§1!i§)
         {
            _loc1_.§6!K§();
         }
      }
   }
}
