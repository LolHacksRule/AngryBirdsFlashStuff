package §9#@§
{
   import §!!U§.Sprite;
   import §2"Y§.§%"3§;
   import §69§.§""H§;
   import §69§.§'U§;
   import §69§.§>!b§;
   import §7!F§.§7§;
   
   public class §1"6§ extends § "V§
   {
       
      
      protected var §>#-§:String;
      
      protected var §6#U§:String;
      
      protected var §%" §:String;
      
      protected var §6c§:String;
      
      protected var §<"R§:Number = 1.0;
      
      protected var §,"<§:§%"3§;
      
      public function §1"6§(param1:§""H§, param2:Number, param3:§7#5§, param4:§%"3§, param5:Number, param6:Boolean = true)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param5,param6);
            while(true)
            {
               this.§,"<§ = param4;
               while(true)
               {
                  this.§>#-§ = param1.§?c§;
                  loop2:
                  while(true)
                  {
                     this.§6#U§ = param1.§ "&§;
                     do
                     {
                        this.§%" § = param1.§6"2§;
                        continue loop2;
                     }
                     while(_loc8_ && this);
                     
                  }
                  if(_loc8_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
               if(_loc8_ && param1)
               {
                  continue;
               }
               this.§6c§ = param1.§?!^§;
               §§goto(addr48);
            }
         }
      }
      
      public function get §?c§() : String
      {
         return this.§>#-§;
      }
      
      public function get § "&§() : String
      {
         return this.§6#U§;
      }
      
      public function get §6"2§() : String
      {
         return this.§%" §;
      }
      
      public function get §?!^§() : String
      {
         return this.§6c§;
      }
      
      public function get textureScale() : Number
      {
         return this.§<"R§;
      }
      
      override public function playAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§,"<§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr61);
            }
            §§pop().§"#_§(§0;§,10000);
         }
         addr61:
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,"<§);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,"<§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().§9"4§(§0;§);
         }
         addr60:
         if(_loc2_)
         {
            §§push(this.§,"<§);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §@#+§.x = 0;
            do
            {
               §@#+§.y = §8&§ - §8"R§ + 100;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override protected function createLayer(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number) : §2"A§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§'U§ = null;
         if(_loc6_ || this)
         {
            if(param1 is §'U§)
            {
               addr40:
               _loc5_ = param1 as §'U§;
               if(!(_loc7_ && this))
               {
                  return new §3N§(_loc5_,param2,param3,param4);
               }
            }
            return super.createLayer(param1,param2,param3,param4);
         }
         §§goto(addr40);
      }
   }
}
