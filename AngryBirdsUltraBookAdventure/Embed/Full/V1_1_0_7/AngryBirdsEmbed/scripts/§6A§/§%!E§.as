package §6A§
{
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   
   public class §%!E§ extends Sprite
   {
       
      
      protected var §!#§:Sprite;
      
      protected var §24§:DisplayObject;
      
      protected var § !J§:Sprite;
      
      public function §%!E§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         addChild(this.§ !J§ = new Sprite());
         this.§ !J§.addChild(this.§!#§ = new Sprite());
         this.§24§ = new §<3§(2,2,0);
         if(_loc2_)
         {
            §§push(this.§24§);
            if(_loc2_)
            {
               §§push(§=w§.§9!#§);
               if(_loc2_)
               {
                  §§pop().width = §§pop();
                  §§push(this.§24§);
                  if(_loc2_)
                  {
                     addr83:
                     §§pop().height = §=w§.§0i§;
                     addChild(this.§24§);
                     §§push(this.§24§);
                     addr81:
                  }
                  §§pop().alpha = 0.5;
                  return;
               }
               §§goto(addr83);
            }
            §§goto(addr81);
         }
         §§goto(addr83);
      }
      
      public function get §1-§() : Sprite
      {
         return this.§!#§;
      }
      
      public function get §`5§() : DisplayObject
      {
         return this.§24§;
      }
      
      public function get §2@§() : Sprite
      {
         return this.§ !J§;
      }
      
      public function §#U§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§24§.width);
         if(_loc5_ || param2)
         {
            §§push(§§pop() / this.§24§.height);
            if(_loc5_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(this.§24§);
               if(!_loc4_)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(600);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§pop().width = §§pop();
                                 if(_loc5_ || param2)
                                 {
                                    addr101:
                                    §§push(this.§24§);
                                    §§push(param2);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr113:
                                       §§pop().height = §§pop() + 600 / _loc3_;
                                    }
                                    §§goto(addr113);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr33);
      }
   }
}
