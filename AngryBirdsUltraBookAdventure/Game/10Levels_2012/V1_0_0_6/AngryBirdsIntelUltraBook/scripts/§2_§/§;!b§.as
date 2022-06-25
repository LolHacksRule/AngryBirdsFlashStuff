package §2_§
{
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §;!b§ extends Sprite
   {
       
      
      protected var §7[§:Sprite;
      
      protected var §?!s§:DisplayObject;
      
      protected var §,F§:Sprite;
      
      public function §;!b§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            if(!_loc2_)
            {
               addChild(this.§,F§ = new Sprite());
               if(!(_loc2_ && _loc1_))
               {
                  addr45:
                  this.§,F§.addChild(this.§7[§ = new Sprite());
                  if(_loc3_ || this)
                  {
                     this.§?!s§ = new §;R§(2,2,0);
                  }
               }
               loop0:
               while(true)
               {
                  §§push(this.§?!s§);
                  loop1:
                  while(true)
                  {
                     §§push(§^!c§.§"!c§);
                     addr144:
                     while(true)
                     {
                        §§pop().width = §§pop();
                        addr145:
                        while(_loc3_)
                        {
                           §§push(this.§?!s§);
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr45);
         }
         §§goto(addr99);
      }
      
      public function get § !J§() : Sprite
      {
         return this.§7[§;
      }
      
      public function get §5!,§() : DisplayObject
      {
         return this.§?!s§;
      }
      
      public function get §#"§() : Sprite
      {
         return this.§,F§;
      }
      
      public function §;!W§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§?!s§.width);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§?!s§.height);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§?!s§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr115:
               while(true)
               {
                  §§push(600);
                  addr116:
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
                           addr119:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
   }
}
