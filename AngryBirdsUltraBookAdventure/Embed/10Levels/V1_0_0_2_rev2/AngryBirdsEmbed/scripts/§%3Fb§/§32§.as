package §?b§
{
   import §5H§.§[k§;
   import §9W§.§3g§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   
   public class §32§ extends Sprite
   {
       
      
      protected var §%9§:Sprite;
      
      protected var §3`§:DisplayObject;
      
      protected var §17§:Sprite;
      
      public function §32§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         addChild(this.§17§ = new Sprite());
         if(!_loc3_)
         {
            this.§17§.addChild(this.§%9§ = new Sprite());
            this.§3`§ = new §3g§(2,2,0);
            §§push(this.§3`§);
            if(_loc2_ || _loc1_)
            {
               §§push(§[k§.§>§);
               if(!_loc3_)
               {
                  §§pop().width = §§pop();
                  if(_loc2_)
                  {
                     §§push(this.§3`§);
                     if(_loc2_)
                     {
                        addr90:
                        §§pop().height = §[k§.§%i§;
                        if(!_loc3_)
                        {
                           addr93:
                           addChild(this.§3`§);
                        }
                        §§goto(addr103);
                     }
                     §§pop().alpha = 0.5;
                     addr103:
                     if(!_loc3_)
                     {
                        §§push(this.§3`§);
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
      
      public function get §>s§() : Sprite
      {
         return this.§%9§;
      }
      
      public function get §"`§() : DisplayObject
      {
         return this.§3`§;
      }
      
      public function get §5!;§() : Sprite
      {
         return this.§17§;
      }
      
      public function §;s§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§3`§.width);
         if(_loc5_ || param1)
         {
            §§push(§§pop() / this.§3`§.height);
            if(!_loc4_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.§3`§);
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
                     §§push(this.§3`§);
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
