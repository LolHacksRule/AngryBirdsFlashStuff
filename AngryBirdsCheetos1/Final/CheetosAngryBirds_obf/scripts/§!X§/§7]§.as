package §!X§
{
   import §?m§.§7?§;
   import §]@§.§9!<§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §7]§ extends Sprite
   {
       
      
      protected var §4!0§:Sprite;
      
      protected var §]z§:DisplayObject;
      
      protected var §<b§:Sprite;
      
      public function §7]§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               addChild(this.§<b§ = new Sprite());
               if(!_loc3_)
               {
                  this.§<b§.addChild(this.§4!0§ = new Sprite());
                  if(_loc2_)
                  {
                     this.§]z§ = new §9!<§(2,2,0);
                     addr134:
                     while(true)
                     {
                        §§push(this.§]z§);
                        addr113:
                        while(true)
                        {
                           §§push(§7?§.§;#§);
                           loop1:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr126:
                              while(true)
                              {
                                 §§push(this.§]z§);
                                 addr104:
                                 while(true)
                                 {
                                    §§push(§7?§.§0h§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§pop().height = §§pop();
                                 addr109:
                                 addChild(this.§]z§);
                              }
                           }
                        }
                     }
                     addr134:
                     addr47:
                  }
                  while(true)
                  {
                     §§push(this.§]z§);
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop().alpha = 0.5;
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr104);
                  }
                  return;
               }
               §§goto(addr47);
            }
            §§goto(addr134);
         }
         §§goto(addr126);
      }
      
      public function get §98§() : Sprite
      {
         return this.§4!0§;
      }
      
      public function get §%!X§() : DisplayObject
      {
         return this.§]z§;
      }
      
      public function get § !N§() : Sprite
      {
         return this.§<b§;
      }
      
      public function §try§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§]z§.width);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§]z§.height);
            if(!(_loc5_ && param2))
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || param2)
            {
               §§push(this.§]z§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc5_ && this))
                  {
                     §§push(600);
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
                           }
                        }
                     }
                     addr116:
                  }
                  addr119:
                  while(true)
                  {
                     §§pop().width = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr94);
         }
         §§goto(addr32);
      }
   }
}
