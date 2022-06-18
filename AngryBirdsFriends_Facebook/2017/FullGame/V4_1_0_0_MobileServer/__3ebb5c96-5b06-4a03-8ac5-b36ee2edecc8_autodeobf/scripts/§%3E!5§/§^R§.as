package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7"&§.§!"v§;
   import §7"&§.§]"k§;
   
   public class §^R§ extends §0S§
   {
       
      
      protected var §'#[§:§-%§;
      
      public function §^R§(param1:Sprite, param2:b2World, param3:§!"v§, param4:§]"k§, param5:§]"o§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function set §>!f§(param1:§-%§) : void
      {
         this.§'#[§ = param1;
      }
      
      public function get §>!f§() : §-%§
      {
         return this.§'#[§;
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         super.collidedWith(param1);
         if(this.§'#[§)
         {
            this.§'#[§.§&!D§(param1,this);
         }
      }
      
      override public function collisionEnded(param1:§#-§) : void
      {
         super.collisionEnded(param1);
         if(this.§'#[§)
         {
            this.§'#[§.§4#c§(param1,this);
         }
      }
   }
}
