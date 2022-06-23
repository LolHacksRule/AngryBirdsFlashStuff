package §3G§
{
   import §+!?§.§"h§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   
   public class §6!>§ extends Sprite
   {
       
      
      protected var §[!@§:Sprite;
      
      protected var §[§:DisplayObject;
      
      protected var §1G§:Sprite;
      
      public function §6!>§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         addChild(this.§1G§ = new Sprite());
         this.§1G§.addChild(this.§[!@§ = new Sprite());
         this.§[§ = new §-!!§(2,2,0);
         §§push(this.§[§);
         if(!_loc2_)
         {
            §§push(§"h§.§4T§);
            if(_loc3_ || _loc2_)
            {
               §§pop().width = §§pop();
               if(_loc3_)
               {
                  §§push(this.§[§);
                  if(_loc3_ || _loc1_)
                  {
                     addr94:
                     §§pop().height = §"h§.§0!$§;
                     addr92:
                     if(_loc3_)
                     {
                        addChild(this.§[§);
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr112);
                     }
                     §§push(this.§[§);
                  }
                  §§pop().alpha = 0.5;
               }
               addr112:
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr92);
      }
      
      public function get §4L§() : Sprite
      {
         return this.§[!@§;
      }
      
      public function get §?!=§() : DisplayObject
      {
         return this.§[§;
      }
      
      public function get §&8§() : Sprite
      {
         return this.§1G§;
      }
      
      public function §=!&§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§[§.width);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§[§.height);
            if(!(_loc5_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§[§);
            if(_loc4_ || param1)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(600);
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || param1)
                           {
                              §§pop().width = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr100:
                                 §§push(this.§[§);
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    addr103:
                                    §§push(§§pop() + 600 / _loc3_);
                                 }
                                 §§pop().height = §§pop();
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr100);
      }
   }
}
