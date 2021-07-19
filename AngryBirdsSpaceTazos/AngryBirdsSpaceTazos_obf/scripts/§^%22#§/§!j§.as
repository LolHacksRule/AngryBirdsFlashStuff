package §^"#§
{
   import flash.display.MovieClip;
   
   public class §!j§ extends MovieClip
   {
      
      private static const §3b§:Number = 0.6;
      
      private static const §^S§:Number = 0.8;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3b§ = 0.6;
         }
         do
         {
            §^S§ = 0.8;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §1"3§:Number;
      
      private var §`$§:Number = 0;
      
      private var §5>§:Number = 0;
      
      private var §3!4§:Boolean;
      
      public function §!j§(param1:MovieClip)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            do
            {
               this.addChild(param1);
            }
            while(!(_loc3_ || _loc2_));
            
         }
         loop1:
         while(true)
         {
            §§push(Math.abs(this.§`$§) < 0.2);
            loop2:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr147:
                     do
                     {
                        §§push(Math.abs(this.§5>§) < 0.2);
                        if(_loc2_ && _loc2_)
                        {
                           continue loop3;
                        }
                     }
                     while(!(_loc2_ && param1));
                     
                     continue loop2;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     addr168:
                     §§push(this);
                     §§push(Math.random() * §3b§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§3b§);
                        if(_loc3_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(§§pop() - §§pop());
                     }
                  }
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this);
                     §§push(Math.random() * §^S§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§^S§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§1"3§ = §§pop();
                  }
                  while(!(_loc2_ && this))
                  {
                     x = Math.random() * §`Y§.§7O§;
                     do
                     {
                        y = Math.random() * §`Y§.§3!h§;
                        do
                        {
                           this.§3!4§ = true;
                        }
                        while(!_loc3_);
                        
                     }
                     while(!(_loc3_ || _loc3_));
                     
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                     §§goto(addr147);
                  }
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  continue loop1;
                  §§pop().§`$§ = §§pop();
                  break;
               }
               §§push(this);
               §§push(Math.random() * §3b§);
               if(!(_loc2_ && param1))
               {
                  §§push(§3b§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§push(§§pop() - §§pop());
               }
               §§pop().§5>§ = §§pop();
               §§goto(addr168);
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            x += param1 / 100 * this.§`$§;
         }
         loop0:
         while(true)
         {
            y += param1 / 100 * this.§5>§;
            while(true)
            {
               this.rotation += param1 / 100 * this.§1"3§;
               while(true)
               {
                  §§push(this.§"4§());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        §§push(this.§8!w§());
                     }
                     else
                     {
                        addr59:
                     }
                     if(!_loc3_)
                     {
                        return;
                     }
                     addr62:
                     continue;
                     break;
                  }
                  break;
               }
               if(§§pop())
               {
               }
               §§goto(addr62);
               if(_loc2_ && param1)
               {
                  continue;
               }
               if(_loc2_)
               {
                  continue loop0;
               }
               §§goto(addr59);
            }
         }
      }
      
      private function §"4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(x >= -this.width)
            {
               while(true)
               {
                  if(x > §`Y§.§7O§ + this.width / 2)
                  {
                     if(!_loc2_)
                     {
                        x = -this.width;
                     }
                     if(!_loc2_)
                     {
                        §§push(false);
                        break;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           continue;
                        }
                        addr102:
                        x = §`Y§.§7O§ + this.width / 2;
                     }
                     return false;
                  }
                  else
                  {
                     §§push(true);
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  return §§pop();
               }
               return §§pop();
            }
            §§goto(addr102);
         }
         §§goto(addr96);
      }
      
      private function §8!w§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(y >= -this.height)
            {
               if(y > §`Y§.§3!h§ + this.height / 2)
               {
                  if(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        addr81:
                        y = -this.height;
                        §§goto(addr86);
                     }
                     else
                     {
                        y = §`Y§.§3!h§ + this.height / 2;
                        addr103:
                     }
                     §§goto(addr122);
                  }
                  addr86:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr34:
                     §§push(false);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(false);
                     addr122:
                  }
                  return §§pop();
               }
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr34);
            }
            §§goto(addr103);
         }
         §§goto(addr81);
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3!4§;
      }
   }
}
