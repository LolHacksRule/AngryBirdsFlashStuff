package §]!@§
{
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §?!Y§.§`S§;
   
   public class §9?§ extends Sprite
   {
       
      
      protected var §1!`§:Sprite;
      
      protected var §<!R§:DisplayObject;
      
      protected var §@!@§:Sprite;
      
      public function §9?§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addChild(this.§@!@§ = new Sprite());
               if(_loc2_ || this)
               {
                  §§goto(addr50);
               }
               §§goto(addr79);
            }
            addr50:
            this.§@!@§.addChild(this.§1!`§ = new Sprite());
            if(_loc2_ || _loc3_)
            {
               this.§<!R§ = new §6!Y§(2,2,0);
               addr169:
               while(true)
               {
                  §§push(this.§<!R§);
                  addr157:
                  while(true)
                  {
                     §§push(§`S§.SCREEN_WIDTH);
                     addr160:
                     while(true)
                     {
                        §§pop().width = §§pop();
                     }
                  }
               }
               addr169:
               addr79:
            }
            loop0:
            while(true)
            {
               §§push(this.§<!R§);
               loop1:
               while(true)
               {
                  §§push(§`S§.SCREEN_HEIGHT);
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  §§pop().height = §§pop();
                  do
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addChild(this.§<!R§);
                        continue loop1;
                     }
                     §§goto(addr169);
                  }
                  while(!(_loc2_ || this));
                  
                  if(!(_loc3_ && _loc3_))
                  {
                     break loop0;
                  }
                  continue loop0;
               }
               §§goto(addr160);
            }
            return;
         }
         §§goto(addr169);
      }
      
      public function get §#q§() : Sprite
      {
         return this.§1!`§;
      }
      
      public function get §5e§() : DisplayObject
      {
         return this.§<!R§;
      }
      
      public function get §<J§() : Sprite
      {
         return this.§@!@§;
      }
      
      public function §]!b§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§<!R§.width);
         if(_loc5_)
         {
            §§push(§§pop() / this.§<!R§.height);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            §§push(this.§<!R§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc5_ || param2)
               {
                  §§push(600);
                  while(true)
                  {
                     §§push(_loc3_);
                     addr108:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr109:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                        }
                     }
                  }
                  addr107:
               }
               addr110:
               while(true)
               {
                  §§pop().width = §§pop();
                  continue loop0;
               }
            }
            addr98:
         }
         while(true)
         {
            §§push(this.§<!R§);
            if(_loc5_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(600);
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc5_)
                        {
                           addr90:
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§pop().height = §§pop();
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        §§goto(addr110);
                     }
                     else
                     {
                        §§goto(addr108);
                     }
                  }
                  else
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr108);
               }
               §§goto(addr90);
            }
            else
            {
               §§goto(addr98);
            }
         }
      }
   }
}
