package §2!H§
{
   import § D§.§]!B§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §'!I§ extends Sprite
   {
       
      
      protected var §1c§:Sprite;
      
      protected var §26§:DisplayObject;
      
      protected var §'!k§:Sprite;
      
      public function §'!I§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addChild(this.§'!k§ = new Sprite());
               if(!_loc3_)
               {
               }
               this.§26§ = new §3x§(2,2,0);
               addr55:
               while(true)
               {
                  §§push(this.§26§);
                  while(true)
                  {
                     §§push(§]!B§.SCREEN_WIDTH);
                     addr136:
                     while(true)
                     {
                        §§pop().width = §§pop();
                        addr137:
                        §§goto(addr91);
                     }
                  }
               }
               addr55:
            }
            this.§'!k§.addChild(this.§1c§ = new Sprite());
            if(_loc3_ || this)
            {
               §§goto(addr55);
            }
            addr91:
            while(true)
            {
               §§push(this.§26§);
               continue loop1;
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get §`!K§() : Sprite
      {
         return this.§1c§;
      }
      
      public function get §8,§() : DisplayObject
      {
         return this.§26§;
      }
      
      public function get §0x§() : Sprite
      {
         return this.§'!k§;
      }
      
      public function §;0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§26§.width);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() / this.§26§.height);
            if(!(_loc4_ && this))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.§26§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  addr111:
                  while(true)
                  {
                     §§push(600);
                     addr112:
                     while(true)
                     {
                        §§push(_loc3_);
                        addr113:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr114:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr115:
                              while(true)
                              {
                                 §§pop().width = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         §§goto(addr38);
      }
   }
}
