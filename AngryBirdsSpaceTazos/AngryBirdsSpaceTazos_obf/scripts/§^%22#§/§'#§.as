package §^"#§
{
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §'#§ extends Sprite
   {
       
      
      private var §^"C§:Shape;
      
      private var §4"%§:uint;
      
      private var §<!f§:uint;
      
      private var §8>§:uint;
      
      private var §^"D§:§5!9§;
      
      private var §2!d§:Number;
      
      private var §"!n§:Boolean = false;
      
      public function §'#§(param1:uint, param2:uint, param3:uint = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<!f§ = param1;
            do
            {
               this.§8>§ = param2;
               continue loop0;
            }
            while(_loc4_ && this);
            
            return;
         }
      }
      
      private function draw() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Shape = new Shape();
         if(!_loc3_)
         {
            addChild(_loc1_);
            loop0:
            while(true)
            {
               _loc1_.graphics.beginFill(this.§4"%§);
               while(true)
               {
                  _loc1_.graphics.drawRect(0,0,this.§<!f§,1);
                  loop2:
                  while(true)
                  {
                     _loc1_.graphics.endFill();
                     loop3:
                     while(true)
                     {
                        this.§^"C§ = new Shape();
                        while(true)
                        {
                           addChild(this.§^"C§);
                           continue loop2;
                           loop7:
                           while(!(_loc3_ && _loc1_))
                           {
                              continue loop0;
                              this.§^"C§.graphics.endFill();
                              if(_loc2_ || _loc2_)
                              {
                                 addr39:
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr46:
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    addr100:
                                    while(true)
                                    {
                                       this.§^"C§.graphics.drawRect(0,0,this.§<!f§,-this.§8>§);
                                       continue loop7;
                                       §§goto(addr39);
                                    }
                                    addr100:
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  this.§^"C§.graphics.beginFill(this.§4"%§);
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§"!n§ == false)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§2!d§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 0.075);
                  }
                  §§pop().§2!d§ = §§pop();
                  while(true)
                  {
                     §§push(this.§2!d§);
                     while(true)
                     {
                        if(§§pop() <= 0)
                        {
                           while(true)
                           {
                              this.§2!d§ = 0;
                              addr221:
                              while(true)
                              {
                              }
                           }
                           addr218:
                        }
                        addr199:
                        while(true)
                        {
                           this.§^"C§.scaleY = this.§2!d§;
                           addr205:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr221);
                        }
                        loop11:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           if(§§pop() < this.§2!d§)
                           {
                              continue loop0;
                           }
                           loop12:
                           while(true)
                           {
                              §§push(this.§^"D§);
                              loop13:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.§^"D§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                       }
                                       addr145:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr146:
                                 }
                                 while(true)
                                 {
                                    this.§^"D§ = §!D§.§[!1§.§1"<§(this.§^"C§,{"scaleY":param1},null,0.1);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(this.§^"D§);
                                       loop18:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§pop().onComplete = this.§@S§;
                                             loop19:
                                             while(true)
                                             {
                                                §§push(this.§^"D§);
                                                while(!_loc3_)
                                                {
                                                   §§pop().§%S§ = false;
                                                   §§push(this.§^"D§);
                                                   continue loop17;
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§pop().play();
                                                   while(!_loc3_)
                                                   {
                                                      this.§2!d§ = param1;
                                                      if(_loc3_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         return;
                                                      }
                                                      addr57:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         continue loop17;
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                continue loop13;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              continue loop11;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               y = this.§^"C§.scaleY * §]!a§.§ "§ / 2;
               §§goto(addr198);
            }
         }
         §§goto(addr166);
      }
      
      private function §@S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!n§ = false;
         }
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^"C§.scaleY = 0;
         }
      }
   }
}
