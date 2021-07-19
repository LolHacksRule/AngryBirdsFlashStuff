package §[x§
{
   import §!Y§.§[o§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §"0§ extends Sprite
   {
       
      
      protected var §-I§:Sprite;
      
      protected var §0!<§:DisplayObject;
      
      protected var §`s§:Sprite;
      
      public function §"0§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addChild(this.§`s§ = new Sprite());
               if(_loc2_)
               {
                  this.§`s§.addChild(this.§-I§ = new Sprite());
               }
               this.§0!<§ = new §09§(2,2,0);
               while(true)
               {
                  §§push(this.§0!<§);
                  while(true)
                  {
                     §§push(§[o§.static);
                     addr119:
                     while(true)
                     {
                        §§pop().width = §§pop();
                     }
                     addr70:
                     if(!(_loc3_ && _loc1_))
                     {
                        §§goto(addr77);
                     }
                  }
                  addr113:
                  addChild(this.§0!<§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§0!<§);
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr70);
                     }
                     loop4:
                     while(true)
                     {
                        §§push(§[o§.§for§);
                        if(!(_loc2_ || _loc1_))
                        {
                           break;
                        }
                        §§pop().height = §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr113);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop4;
                           }
                           addr120:
                        }
                     }
                     §§goto(addr119);
                  }
                  addr77:
                  §§pop().alpha = 0.5;
                  return;
                  addr87:
               }
            }
            §§goto(addr120);
         }
         §§goto(addr87);
      }
      
      public function get §4-§() : Sprite
      {
         return this.§-I§;
      }
      
      public function get §2!8§() : DisplayObject
      {
         return this.§0!<§;
      }
      
      public function get §8X§() : Sprite
      {
         return this.§`s§;
      }
      
      public function § in§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§0!<§.width);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§0!<§.height);
            if(_loc4_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§0!<§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  addr115:
                  while(true)
                  {
                     §§push(600);
                     addr116:
                     while(true)
                     {
                        §§push(_loc3_);
                        addr117:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr118:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr119:
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
            §§goto(addr111);
         }
         §§goto(addr32);
      }
   }
}
