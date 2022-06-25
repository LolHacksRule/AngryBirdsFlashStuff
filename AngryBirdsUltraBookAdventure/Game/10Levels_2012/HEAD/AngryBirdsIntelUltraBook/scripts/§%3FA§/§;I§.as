package §?A§
{
   import §-!>§.§4!T§;
   import §1!&§.§!!9§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   
   public class §;I§ extends Sprite
   {
       
      
      protected var §<!,§:Sprite;
      
      protected var §'!b§:DisplayObject;
      
      protected var §7!H§:Sprite;
      
      public function §;I§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(_loc2_ || this)
            {
               addChild(this.§7!H§ = new Sprite());
               if(!_loc3_)
               {
                  addr45:
                  this.§7!H§.addChild(this.§<!,§ = new Sprite());
                  if(!_loc3_)
                  {
                     this.§'!b§ = new §!!9§(2,2,0);
                     addr149:
                     while(true)
                     {
                        §§push(this.§'!b§);
                        addr137:
                        while(true)
                        {
                           §§push(§4!T§.SCREEN_WIDTH);
                           loop2:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr141:
                              while(true)
                              {
                                 §§push(this.§'!b§);
                                 continue loop2;
                              }
                           }
                           §§pop().height = §§pop();
                        }
                     }
                     addr149:
                  }
                  §§goto(addr149);
               }
               loop0:
               while(true)
               {
                  addChild(this.§'!b§);
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(this.§'!b§);
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop().alpha = 0.5;
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    continue;
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr127);
                           }
                           else
                           {
                              §§goto(addr149);
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr141);
               }
            }
            §§goto(addr149);
         }
         §§goto(addr45);
      }
      
      public function get §#!B§() : Sprite
      {
         return this.§<!,§;
      }
      
      public function get §>L§() : DisplayObject
      {
         return this.§'!b§;
      }
      
      public function get §"!$§() : Sprite
      {
         return this.§7!H§;
      }
      
      public function §1'§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§'!b§.width);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() / this.§'!b§.height);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            §§push(this.§'!b§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr131:
               while(true)
               {
                  §§push(600);
                  addr132:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr133:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr134:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr135:
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
         §§goto(addr127);
      }
   }
}
