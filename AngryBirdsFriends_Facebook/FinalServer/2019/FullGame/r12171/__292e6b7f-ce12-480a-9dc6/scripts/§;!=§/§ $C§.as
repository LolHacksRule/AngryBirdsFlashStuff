package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §8#K§.§&2§;
   import §8#K§.§46§;
   
   public class § $C§ extends §`"4§
   {
       
      
      protected var §-"I§:§>;§;
      
      public function § $C§(param1:Sprite, param2:b2World, param3:§&2§, param4:§46§, param5:§5"?§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §#"S§(param1:§>;§) : void
      {
         this.§-"I§ = param1;
      }
      
      public function get §#"S§() : §>;§
      {
         return this.§-"I§;
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         super.collidedWith(param1);
         if(this.§-"I§)
         {
            this.§-"I§.§8#<§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§'#N§) : void
      {
         super.collisionEnded(param1);
         if(this.§-"I§)
         {
            this.§-"I§.§9"N§(param1,this);
         }
      }
   }
}
