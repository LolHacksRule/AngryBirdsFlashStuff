package §7"o§
{
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §8#K§.§@"M§;
   import §;!=§.§]!m§;
   
   public class §>#5§ extends §=" §
   {
       
      
      protected var §0"^§:§@"M§;
      
      protected var §7$!§:§1!z§;
      
      public function §>#5§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Number = NaN;
         super(param1,param3,param4);
         if(param8 > 0 || param9 > 0)
         {
            _loc10_ = param8;
            if(param8 < param9)
            {
               _loc10_ = param9;
               param7 += Math.PI / 2;
            }
            _loc10_ *= Math.random() - 0.5;
            param5 += Math.cos(param7) * _loc10_;
            param6 += Math.sin(param7) * _loc10_;
         }
         this.§0"^§ = param4 as §@"M§;
         this.§7$!§ = new §1!z§(param2,param5,param6,param7,this.§0"^§);
         this.§7$!§.update(0);
         param1.addChild(this.§7$!§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(!this.§7$!§.update(param1))
         {
            this.§7$!§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§7$!§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§7$!§)
         {
            this.§7$!§.dispose();
            this.§7$!§ = null;
         }
      }
   }
}
