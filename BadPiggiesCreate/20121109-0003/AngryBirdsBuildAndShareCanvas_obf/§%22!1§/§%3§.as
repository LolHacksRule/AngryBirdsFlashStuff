package §"!1§
{
   import flash.events.Event;
   
   public class §%3§ extends Event
   {
      
      public static const §,"6§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §,"6§ = "fileLoaded";
         }
      }
      
      public var file:§4!b§;
      
      public function §%3§(param1:String, param2:§4!b§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §%3§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipEvent type=\"" + type);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() + "\" filename=\"");
            if(_loc2_ || this)
            {
               §§push(§§pop() + this.file.§['§);
               if(!_loc1_)
               {
                  §§push(§§pop() + "\" bubbles=");
                  if(!_loc1_)
                  {
                     addr56:
                     §§push(§§pop() + bubbles);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() + " cancelable=");
                        if(_loc2_)
                        {
                           §§push(§§pop() + cancelable);
                           if(_loc2_)
                           {
                              addr73:
                              §§push(§§pop() + " eventPhase=");
                              if(_loc2_)
                              {
                                 addr77:
                                 §§push(§§pop() + eventPhase);
                                 if(_loc2_ || this)
                                 {
                                    addr96:
                                    return §§pop() + "]";
                                 }
                              }
                           }
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr73);
               }
               §§goto(addr56);
            }
            §§goto(addr77);
         }
         §§goto(addr96);
      }
   }
}
