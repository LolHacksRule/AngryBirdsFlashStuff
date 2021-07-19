package §+!!§
{
   import §,!,§.§0!d§;
   
   public class §-!-§ extends §0!d§
   {
       
      
      private var mRenderer1:§&"l§;
      
      private var mRenderer2:§&"l§;
      
      private var mRenderer3:§&"l§;
      
      public function §-!-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.mRenderer1 = new §&"l§(true);
               addr124:
               while(true)
               {
                  this.mRenderer2 = new §&"l§(true);
                  addr107:
                  while(true)
                  {
                     this.mRenderer3 = new §&"l§(true);
                     addr100:
                     while(true)
                     {
                        addChild(this.mRenderer1);
                     }
                  }
               }
            }
            addr127:
         }
         loop4:
         while(true)
         {
            addChild(this.mRenderer2);
            for(; !_loc2_; loop6:
            while(_loc1_ || _loc1_)
            {
               continue loop4;
               while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop6;
               }
               §§goto(addr100);
            })
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     addChild(this.mRenderer3);
                     continue;
                  }
                  §§goto(addr127);
               }
               §§goto(addr124);
            }
            §§goto(addr107);
            if(!(_loc1_ || this))
            {
               continue;
            }
            this.mRenderer2.x = 200;
            §§goto(addr36);
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.mRenderer1);
                  if(!_loc2_)
                  {
                     §§pop().data = param1.length > 0 ? param1[0] : null;
                     loop1:
                     while(true)
                     {
                        §§push(this.mRenderer2);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().data = param1.length > 1 ? param1[1] : null;
                           for(; _loc3_; §§pop().data = §§pop(),if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           })
                           {
                              §§push(this.mRenderer3);
                              if(_loc3_ || _loc2_)
                              {
                                 if(param1.length <= 2)
                                 {
                                    §§push(null);
                                    continue;
                                 }
                              }
                              §§push(param1[2]);
                           }
                           continue;
                        }
                        §§goto(addr87);
                     }
                     addr25:
                     return;
                     addr127:
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr127);
      }
      
      override public function get height() : Number
      {
         return 34;
      }
   }
}
