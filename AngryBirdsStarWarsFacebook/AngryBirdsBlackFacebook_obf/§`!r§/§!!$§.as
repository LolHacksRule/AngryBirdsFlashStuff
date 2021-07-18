package §`!r§
{
   import §!!U§.DisplayObject;
   import §2"Y§.§1#K§;
   import §^#>§.§#_§;
   
   public class §!!$§ extends §4!L§
   {
       
      
      private var §&![§:DisplayObject;
      
      public function §!!$§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§1#K§, param6:Number = 1)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super(param2,param3,param4,param5,param6);
            do
            {
               this.§&![§ = param1;
               do
               {
                  this.update(0);
               }
               while(!(_loc8_ || param3));
               
            }
            while(!_loc8_);
            
         }
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§&![§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§&![§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§&![§);
                     addr79:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.update(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this.§&![§);
            while(true)
            {
               §§pop().scaleX = §8"2§;
               addr139:
               while(true)
               {
                  §§push(this.§&![§);
                  addr132:
                  while(true)
                  {
                     §§pop().scaleY = §8"2§;
                  }
               }
            }
            addr137:
         }
         loop3:
         while(true)
         {
            §§push(this.§&![§);
            loop4:
            while(true)
            {
               §§pop().rotation = §[<§;
               loop5:
               while(true)
               {
                  §§push(this.§&![§);
                  loop6:
                  for(; !_loc3_; §§push(this.§&![§),if(!(_loc3_ && _loc3_))
                  {
                     continue loop4;
                  })
                  {
                     if(_loc4_)
                     {
                        §§push(§8!+§ / §#_§.§8]§);
                        while(true)
                        {
                           §§pop().x = §§pop();
                           addr110:
                           while(_loc4_)
                           {
                              continue loop6;
                           }
                           addr59:
                           §§push(§=!Z§ / §#_§.§8]§);
                           continue loop5;
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           §§pop().y = §§pop();
                           if(!_loc3_)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop3;
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 return _loc2_;
                              }
                              §§goto(addr139);
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr132);
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr59);
            }
         }
      }
   }
}
