package §@V§
{
   import §0!m§.§@!S§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class § !]§ extends Sprite
   {
       
      
      protected var §?'§:Sprite;
      
      protected var §]!1§:DisplayObject;
      
      protected var §1O§:Sprite;
      
      public function § !]§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && this))
            {
               addChild(this.§1O§ = new Sprite());
               if(_loc2_)
               {
                  this.§1O§.addChild(this.§?'§ = new Sprite());
                  if(_loc2_)
                  {
                     this.§]!1§ = new §8!l§(2,2,0);
                     loop6:
                     while(true)
                     {
                        §§push(this.§]!1§);
                        addr123:
                        while(true)
                        {
                           §§push(§@!S§.§3z§);
                           loop4:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§]!1§);
                                 addr109:
                                 while(true)
                                 {
                                    §§push(§@!S§.§`!,§);
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop().height = §§pop();
                                    while(true)
                                    {
                                       addChild(this.§]!1§);
                                       addr96:
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr144:
                  }
                  while(true)
                  {
                     §§push(this.§]!1§);
                     if(!_loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           §§pop().alpha = 0.5;
                           if(_loc2_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr109);
                  }
                  return;
                  addr90:
               }
               §§goto(addr144);
            }
            §§goto(addr90);
         }
         §§goto(addr119);
      }
      
      public function get §,0§() : Sprite
      {
         return this.§?'§;
      }
      
      public function get §&!S§() : DisplayObject
      {
         return this.§]!1§;
      }
      
      public function get §3x§() : Sprite
      {
         return this.§1O§;
      }
      
      public function §9l§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§]!1§.width);
         if(_loc5_ || param1)
         {
            §§push(§§pop() / this.§]!1§.height);
            if(!(_loc4_ && param1))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this.§]!1§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr108:
                        addr65:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr109:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(600);
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!(_loc4_ && this))
                        {
                           addr110:
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              addr85:
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§pop().height = §§pop();
                                 if(!_loc4_)
                                 {
                                    return;
                                    addr90:
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr109);
                           }
                           while(true)
                           {
                              §§pop().width = §§pop();
                              continue loop0;
                           }
                           addr110:
                        }
                        else
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr110);
               }
               addr103:
            }
            while(true)
            {
               §§push(this.§]!1§);
               if(_loc5_)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr103);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr38);
      }
   }
}
