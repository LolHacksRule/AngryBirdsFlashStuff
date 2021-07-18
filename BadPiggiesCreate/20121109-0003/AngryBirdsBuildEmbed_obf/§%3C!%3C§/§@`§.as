package §<!<§
{
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §?!-§.§'!V§;
   
   public class §@`§ extends Sprite
   {
       
      
      protected var §2!Z§:Sprite;
      
      protected var §2;§:DisplayObject;
      
      protected var §7t§:Sprite;
      
      public function §@`§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         if(!(_loc3_ && _loc2_))
         {
            addChild(this.§7t§ = new Sprite());
            if(!_loc3_)
            {
               this.§7t§.addChild(this.§2!Z§ = new Sprite());
               this.§2;§ = new §8!p§(2,2,0);
               §§push(this.§2;§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§'!V§.§&d§);
                  if(_loc2_)
                  {
                     §§pop().width = §§pop();
                     addr109:
                     addr89:
                     §§push(this.§2;§);
                     if(_loc2_ || this)
                     {
                        §§push(§'!V§.§6k§);
                     }
                     §§pop().alpha = 0.5;
                     §§goto(addr111);
                  }
                  §§pop().height = §§pop();
                  addChild(this.§2;§);
                  if(!_loc3_)
                  {
                     §§push(this.§2;§);
                  }
                  addr111:
                  return;
               }
               §§goto(addr109);
            }
            §§goto(addr89);
         }
         §§goto(addr109);
      }
      
      public function get §'v§() : Sprite
      {
         return this.§2!Z§;
      }
      
      public function get §,w§() : DisplayObject
      {
         return this.§2;§;
      }
      
      public function get §3Z§() : Sprite
      {
         return this.§7t§;
      }
      
      public function §4!g§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§2;§.width);
         if(_loc4_)
         {
            §§push(§§pop() / this.§2;§.height);
            if(_loc4_ || this)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || param2)
            {
               §§push(this.§2;§);
               if(_loc4_ || param2)
               {
                  §§push(param1);
                  if(_loc4_ || this)
                  {
                     §§push(600);
                     if(_loc4_)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§goto(addr100);
                              }
                           }
                        }
                     }
                     §§goto(addr108);
                  }
                  addr100:
                  §§pop().width = §§pop();
                  if(!_loc5_)
                  {
                     addr105:
                     §§push(this.§2;§);
                     §§push(param2);
                     if(_loc4_)
                     {
                        addr108:
                        §§push(§§pop() + 600 / _loc3_);
                     }
                     §§pop().height = §§pop();
                  }
                  return;
               }
            }
            §§goto(addr105);
         }
         §§goto(addr32);
      }
   }
}
