package §%x§
{
   import §"!5§.§,!!§;
   import §?^§.§?C§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   
   public class §[G§ extends Sprite
   {
       
      
      protected var § X§:Sprite;
      
      protected var §?!7§:DisplayObject;
      
      protected var §=!"§:Sprite;
      
      public function §[G§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         addChild(this.§=!"§ = new Sprite());
         if(!_loc3_)
         {
            this.§=!"§.addChild(this.§ X§ = new Sprite());
            this.§?!7§ = new §?C§(2,2,0);
            §§push(this.§?!7§);
            if(_loc2_ || _loc1_)
            {
               §§push(§,!!§.§;]§);
               if(!_loc3_)
               {
                  §§pop().width = §§pop();
                  if(_loc2_)
                  {
                     §§push(this.§?!7§);
                     if(_loc2_)
                     {
                        addr90:
                        §§pop().height = §,!!§.§3L§;
                        if(!_loc3_)
                        {
                           addr93:
                           addChild(this.§?!7§);
                        }
                        §§goto(addr103);
                     }
                     §§pop().alpha = 0.5;
                     addr103:
                     if(!_loc3_)
                     {
                        §§push(this.§?!7§);
                     }
                     return;
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      public function get §5P§() : Sprite
      {
         return this.§ X§;
      }
      
      public function get §`3§() : DisplayObject
      {
         return this.§?!7§;
      }
      
      public function get §96§() : Sprite
      {
         return this.§=!"§;
      }
      
      public function § true§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§?!7§.width);
         if(_loc5_ || param1)
         {
            §§push(§§pop() / this.§?!7§.height);
            if(!_loc4_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.§?!7§);
               if(_loc5_)
               {
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§push(600);
                     if(!(_loc4_ && param1))
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr101);
                              }
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  addr101:
                  §§pop().width = §§pop();
                  if(_loc5_)
                  {
                     addr106:
                     §§push(this.§?!7§);
                     §§push(param2);
                     if(_loc5_ || param2)
                     {
                        addr118:
                        §§pop().height = §§pop() + 600 / _loc3_;
                     }
                     §§goto(addr118);
                  }
                  return;
               }
            }
            §§goto(addr106);
         }
         §§goto(addr33);
      }
   }
}
