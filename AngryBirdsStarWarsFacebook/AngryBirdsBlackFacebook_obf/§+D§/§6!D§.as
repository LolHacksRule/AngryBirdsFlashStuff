package §+D§
{
   import §1!i§.§2§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import flash.text.TextField;
   
   public class §6!D§ extends §1"z§
   {
       
      
      public var §13§:TextField;
      
      private var § "#§:§2#0§ = null;
      
      public function §6!D§(param1:XML, param2:§ #^§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§13§ = mClip.getChildByName("text") as TextField;
               loop1:
               while(true)
               {
                  if(param1.@text)
                  {
                     if(!_loc3_)
                     {
                        this.setText(param1.@text);
                     }
                     while(true)
                     {
                        addr39:
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop1;
                        }
                     }
                     addr90:
                  }
                  while(true)
                  {
                     if(!param1.@tabIndex)
                     {
                        while(!mClip.mouseEnabled)
                        {
                           if(!_loc4_)
                           {
                              addr62:
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr32:
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr39);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§13§.tabIndex = param1.@tabIndex;
                                 continue loop0;
                                 §§goto(addr32);
                              }
                              addr67:
                           }
                        }
                        return;
                        addr24:
                     }
                     §§goto(addr67);
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.setEnabled(param1,param2);
         }
         while(this.§13§)
         {
            if(!_loc4_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               this.§13§.mouseEnabled = mClip.mouseEnabled;
            }
            break;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§13§.text = param1;
         }
      }
      
      public function §+!E§() : String
      {
         return this.§13§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.§ "#§);
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§13§ = null;
                        if(!(_loc1_ && _loc1_))
                        {
                           addr40:
                           if(!_loc1_)
                           {
                              break;
                           }
                           addr93:
                           while(true)
                           {
                              §§push(this.§ "#§);
                              addr95:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr96:
                                 while(true)
                                 {
                                    this.§ "#§ = null;
                                 }
                              }
                              §§goto(addr40);
                           }
                        }
                        while(_loc1_ && _loc2_)
                        {
                           §§goto(addr96);
                        }
                        continue loop0;
                        addr71:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr71);
      }
      
      public function §3"W§(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§ "#§ = new §2#0§(this.§13§,param1,param2,param3);
         }
      }
      
      public function §["5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ "#§.dispose();
            do
            {
               this.§ "#§ = null;
            }
            while(!(_loc1_ || this));
            
         }
      }
   }
}
