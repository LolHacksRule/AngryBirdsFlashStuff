package §"!I§
{
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §9b§.§"!S§;
   
   public class §55§ extends Sprite
   {
       
      
      protected var §3b§:Sprite;
      
      protected var §1!c§:DisplayObject;
      
      protected var §5!]§:Sprite;
      
      public function §55§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_)
            {
               addr23:
               addChild(this.§5!]§ = new Sprite());
               if(!(_loc2_ && _loc1_))
               {
                  this.§5!]§.addChild(this.§3b§ = new Sprite());
                  if(!_loc2_)
                  {
                     this.§1!c§ = new §7?§(2,2,0);
                     loop0:
                     while(true)
                     {
                        §§push(this.§1!c§);
                        addr117:
                        while(true)
                        {
                           §§push(§"!S§.§3i§);
                           addr119:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              continue loop0;
                           }
                        }
                     }
                     addr53:
                     addr145:
                  }
                  while(true)
                  {
                     §§push(this.§1!c§);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().alpha = 0.5;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr82);
                     }
                     break;
                  }
                  §§goto(addr106);
               }
               §§goto(addr53);
            }
            §§goto(addr145);
         }
         §§goto(addr23);
      }
      
      public function get §2]§() : Sprite
      {
         return this.§3b§;
      }
      
      public function get §!C§() : DisplayObject
      {
         return this.§1!c§;
      }
      
      public function get §[$§() : Sprite
      {
         return this.§5!]§;
      }
      
      public function §@B§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§1!c§.width);
         if(_loc4_)
         {
            §§push(§§pop() / this.§1!c§.height);
            if(!(_loc5_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§1!c§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr105:
               while(true)
               {
                  §§push(600);
                  addr106:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr107:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr108:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr109:
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
            addr104:
         }
         while(true)
         {
            §§push(this.§1!c§);
            if(_loc4_)
            {
               §§push(param2);
               if(_loc4_ || this)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(600);
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc5_)
                           {
                              addr81:
                              §§push(§§pop() + §§pop());
                              if(!(_loc5_ && this))
                              {
                                 §§pop().height = §§pop();
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr108);
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§goto(addr105);
                  }
               }
               §§goto(addr81);
            }
            else
            {
               §§goto(addr104);
            }
         }
      }
   }
}
