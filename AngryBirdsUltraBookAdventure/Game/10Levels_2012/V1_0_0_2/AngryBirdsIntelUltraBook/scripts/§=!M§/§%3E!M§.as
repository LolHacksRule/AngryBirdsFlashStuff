package §=!M§
{
   import flash.events.Event;
   
   public class §>!M§ extends Event
   {
      
      public static const §4!Q§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4!Q§ = "fileLoaded";
         }
      }
      
      public var file:§"T§;
      
      public function §>!M§(param1:String, param2:§"T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc6_ && this);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §>!M§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"");
         if(!_loc1_)
         {
            §§push(§§pop() + type);
            if(_loc2_ || this)
            {
               §§push("\" filename=\"");
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                     §§push(§§pop() + this.file.§,,§);
                     if(_loc2_)
                     {
                        addr56:
                        §§push("\" bubbles=");
                        if(_loc2_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              addr67:
                              §§push(§§pop() + bubbles);
                              if(!_loc1_)
                              {
                                 addr71:
                                 §§push(" cancelable=");
                                 if(!(_loc1_ && this))
                                 {
                                    addr79:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc1_ && this))
                                    {
                                       addr97:
                                       §§push(§§pop() + cancelable);
                                       if(!_loc1_)
                                       {
                                          addr101:
                                          §§push(" eventPhase=");
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc1_)
                                             {
                                             }
                                             addr118:
                                             return §§pop() + "]";
                                             addr117:
                                          }
                                          §§goto(addr117);
                                       }
                                       §§push(§§pop() + eventPhase);
                                       if(_loc2_ || this)
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr101);
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr97);
               }
               §§goto(addr79);
            }
            §§goto(addr67);
         }
         §§goto(addr56);
      }
   }
}
