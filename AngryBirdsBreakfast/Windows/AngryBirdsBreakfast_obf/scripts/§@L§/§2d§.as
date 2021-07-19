package §@L§
{
   import §6![§.§ !f§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import com.angrybirds.§&!"§;
   
   public class §2d§ extends Sprite
   {
       
      
      protected var §]F§:Sprite;
      
      protected var §&!S§:DisplayObject;
      
      protected var §?!f§:Sprite;
      
      public function §2d§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addChild(this.§?!f§ = new Sprite());
               if(!(_loc3_ && _loc2_))
               {
                  addr44:
                  this.§?!f§.addChild(this.§]F§ = new Sprite());
                  if(_loc2_)
                  {
                     this.§&!S§ = new § !f§(2,2,0);
                     while(true)
                     {
                        §§push(this.§&!S§);
                        loop1:
                        while(true)
                        {
                           §§push(§&!"§.§8#§);
                           addr125:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr136:
                              while(true)
                              {
                                 §§push(this.§&!S§);
                                 continue loop1;
                              }
                           }
                        }
                     }
                     addr57:
                  }
                  §§goto(addr119);
               }
               §§goto(addr57);
            }
            §§goto(addr93);
         }
         §§goto(addr44);
      }
      
      public function get §1!g§() : Sprite
      {
         return this.§]F§;
      }
      
      public function get §'D§() : DisplayObject
      {
         return this.§&!S§;
      }
      
      public function get §2V§() : Sprite
      {
         return this.§?!f§;
      }
      
      public function §,'§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§&!S§.width);
         if(_loc4_ || this)
         {
            §§push(§§pop() / this.§&!S§.height);
            if(!(_loc5_ && this))
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(this.§&!S§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  addr110:
                  while(true)
                  {
                     §§push(600);
                     addr111:
                     while(true)
                     {
                        §§push(_loc3_);
                        addr112:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr113:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr114:
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
               addr109:
            }
            while(true)
            {
               §§push(this.§&!S§);
               if(_loc4_)
               {
                  §§push(param2);
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
                              addr79:
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || param2)
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop().height = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§goto(addr109);
               }
            }
            return;
         }
         §§goto(addr37);
      }
   }
}
