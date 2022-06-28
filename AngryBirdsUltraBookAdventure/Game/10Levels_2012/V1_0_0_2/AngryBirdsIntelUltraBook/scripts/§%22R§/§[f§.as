package §"R§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[f§
   {
       
      
      public var mName:String;
      
      public var §#!H§:int;
      
      public var §!!Y§:Number = 1;
      
      private var §`!K§:Vector.<§`a§>;
      
      private var §1P§:Number;
      
      public function §[f§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§#!H§ = param2;
         this.§!!Y§ = param3;
         this.§1P§ = this.§!!Y§;
         this.§`!K§ = new Vector.<§`a§>();
      }
      
      public function §']§() : Boolean
      {
         return this.§`!K§.length < this.§#!H§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §`a§
      {
         if(param3 < 0)
         {
            param3 = this.§1P§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§`a§ = new §`a§(_loc6_,this.§8!A§,param4);
         if(this.§!!Y§ == 0)
         {
            _loc7_.§2!M§();
         }
         this.§`!K§.push(_loc7_);
         return _loc7_;
      }
      
      private function §8!A§(param1:§`a§) : void
      {
         var _loc2_:Vector.<§`a§> = null;
         var _loc3_:§`a§ = null;
         if(this.§`!K§.indexOf(param1) > -1)
         {
            _loc2_ = this.§`!K§.splice(this.§`!K§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §;J§() : Boolean
      {
         return this.§`!K§.length > 0;
      }
      
      public function §"!"§() : void
      {
         var _loc1_:§`a§ = null;
         while(this.§`!K§.length > 0)
         {
            _loc1_ = this.§`!K§[0];
            _loc1_.stop();
            _loc1_.§<@§();
         }
      }
      
      public function §1!@§() : void
      {
         var _loc1_:§`a§ = null;
         this.§!!Y§ = 0;
         for each(_loc1_ in this.§`!K§)
         {
            _loc1_.§2!M§();
         }
      }
      
      public function § !#§() : void
      {
         var _loc1_:§`a§ = null;
         this.§!!Y§ = this.§1P§;
         for each(_loc1_ in this.§`!K§)
         {
            _loc1_.§<!x§();
         }
      }
   }
}
