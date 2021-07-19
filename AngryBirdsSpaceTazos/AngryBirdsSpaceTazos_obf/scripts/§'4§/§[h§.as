package §'4§
{
   import §,"&§.§9q§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §[h§ extends Sprite
   {
       
      
      protected var §+;§:Sprite;
      
      protected var §4Z§:DisplayObject;
      
      protected var §5V§:Sprite;
      
      public function §[h§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc3_ || _loc3_)
            {
               addChild(this.§5V§ = new Sprite());
               if(_loc3_ || _loc1_)
               {
                  addr50:
                  this.§5V§.addChild(this.§+;§ = new Sprite());
                  if(!_loc2_)
                  {
                     this.§4Z§ = new §&!D§(2,2,0);
                     addr63:
                  }
                  while(true)
                  {
                     §§push(this.§4Z§);
                     loop1:
                     while(true)
                     {
                        §§push(§9q§.§?[§);
                        addr136:
                        while(true)
                        {
                           §§pop().width = §§pop();
                           addr147:
                           while(true)
                           {
                              §§push(this.§4Z§);
                              continue loop1;
                           }
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     addChild(this.§4Z§);
                     §§goto(addr100);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr50);
         }
         §§goto(addr94);
      }
      
      public function get §#c§() : Sprite
      {
         return this.§+;§;
      }
      
      public function get §=I§() : DisplayObject
      {
         return this.§4Z§;
      }
      
      public function get §2!F§() : Sprite
      {
         return this.§5V§;
      }
      
      public function §&w§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§4Z§.width);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() / this.§4Z§.height);
            if(!_loc5_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§4Z§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr112:
                        addr69:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr113:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(600);
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc5_)
                           {
                              addr89:
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 §§pop().height = §§pop();
                                 if(_loc4_)
                                 {
                                    return;
                                    addr94:
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr113);
                           }
                           while(true)
                           {
                              §§pop().width = §§pop();
                              continue loop0;
                           }
                           addr114:
                        }
                        else
                        {
                           §§goto(addr112);
                        }
                        §§goto(addr113);
                     }
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr94);
         }
         §§goto(addr32);
      }
   }
}
