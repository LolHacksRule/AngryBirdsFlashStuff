package §'N§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7u§
   {
       
      
      public var mName:String;
      
      public var §@O§:int;
      
      public var §6i§:Number = 1;
      
      private var §@e§:Vector.<§=x§>;
      
      private var §7>§:Number;
      
      public function §7u§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@O§ = param2;
         this.§6i§ = param3;
         this.§7>§ = this.§6i§;
         this.§@e§ = new Vector.<§=x§>();
      }
      
      public function §9;§() : Boolean
      {
         return this.§@e§.length < this.§@O§;
      }
      
      public function §1g§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §=x§
      {
         if(param3 < 0)
         {
            param3 = this.§7>§;
         }
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel;
         if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
         {
            return null;
         }
         var _loc7_:§=x§ = new §=x§(_loc6_,this.§!H§,param4);
         if(this.§6i§ == 0)
         {
            _loc7_.§0!7§();
         }
         this.§@e§.push(_loc7_);
         return _loc7_;
      }
      
      private function §!H§(param1:§=x§) : void
      {
         var _loc2_:Vector.<§=x§> = null;
         var _loc3_:§=x§ = null;
         if(this.§@e§.indexOf(param1) > -1)
         {
            _loc2_ = this.§@e§.splice(this.§@e§.indexOf(param1),1);
            _loc3_ = _loc2_[0];
            _loc3_.destroy();
            _loc3_ = null;
            _loc2_ = null;
         }
      }
      
      public function §[!F§() : Boolean
      {
         return this.§@e§.length > 0;
      }
      
      public function §@n§() : void
      {
         var _loc1_:§=x§ = null;
         while(this.§@e§.length > 0)
         {
            _loc1_ = this.§@e§[0];
            _loc1_.stop();
            _loc1_.§,&§();
         }
      }
      
      public function §7!9§() : void
      {
         var _loc1_:§=x§ = null;
         this.§6i§ = 0;
         for each(_loc1_ in this.§@e§)
         {
            _loc1_.§0!7§();
         }
      }
      
      public function §<!1§() : void
      {
         var _loc1_:§=x§ = null;
         this.§6i§ = this.§7>§;
         for each(_loc1_ in this.§@e§)
         {
            _loc1_.§7F§();
         }
      }
   }
}
