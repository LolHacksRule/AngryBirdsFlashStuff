package §^#>§
{
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import com.angrybirds.§,!q§;
   
   public class §2"Z§ extends Sprite
   {
       
      
      protected var §9!z§:Sprite;
      
      protected var §1"g§:DisplayObject;
      
      protected var §[!,§:Sprite;
      
      public function §2"Z§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            if(!_loc2_)
            {
               addChild(this.§[!,§ = new Sprite());
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr45);
               }
               §§goto(addr130);
            }
            §§goto(addr147);
         }
         addr45:
         this.§[!,§.addChild(this.§9!z§ = new Sprite());
         if(!(_loc2_ && _loc2_))
         {
            this.§1"g§ = new §2"D§(2,2,0);
            loop7:
            while(true)
            {
               §§push(this.§1"g§);
               loop4:
               while(true)
               {
                  §§push(§,!q§.§%N§);
                  loop3:
                  while(true)
                  {
                     §§pop().width = §§pop();
                     addr147:
                     loop6:
                     while(true)
                     {
                        §§push(this.§1"g§);
                        loop5:
                        while(true)
                        {
                           §§push(§,!q§.§>#O§);
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           addr122:
                           §§pop().height = §§pop();
                           while(!(_loc3_ || _loc2_))
                           {
                              continue loop7;
                              §§goto(addr122);
                           }
                           while(true)
                           {
                              addChild(this.§1"g§);
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§1"g§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                              §§goto(addr123);
                           }
                           addr123:
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get §2"E§() : Sprite
      {
         return this.§9!z§;
      }
      
      public function get §>D§() : DisplayObject
      {
         return this.§1"g§;
      }
      
      public function get §`"D§() : Sprite
      {
         return this.§[!,§;
      }
      
      public function §>"g§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§1"g§.width);
         if(!_loc4_)
         {
            §§push(§§pop() / this.§1"g§.height);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§1"g§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr101:
               while(true)
               {
                  §§push(600);
                  addr102:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr103:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr104:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr105:
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
         §§goto(addr87);
      }
   }
}
