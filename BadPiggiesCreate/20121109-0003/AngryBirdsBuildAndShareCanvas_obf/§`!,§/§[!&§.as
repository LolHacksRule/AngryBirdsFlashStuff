package §`!,§
{
   import flash.events.Event;
   
   public class §[!&§ extends Event
   {
      
      public static const §^A§:String = "surpriseChanged";
      
      public static const §^]§:String = "startUpdate";
      
      public static const §>!0§:String = "startLoad";
      
      public static const §in§:String = "finishLoad";
      
      public static const §>""§:String = "questsFetched";
      
      public static const §^[§:String = "conditionChange";
      
      public static const §#+§:String = "stateChange";
      
      public static const §-@§:String = "stabilityCompleted";
      
      public static const §6B§:String = "stabilityFail";
      
      public static const §#"5§:String = "questCompleted";
      
      public static const §=U§:String = "questError";
      
      public static var §0S§:String;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^A§ = "surpriseChanged";
            loop0:
            while(true)
            {
               §^]§ = "startUpdate";
               loop1:
               while(true)
               {
                  §>!0§ = "startLoad";
                  loop2:
                  while(true)
                  {
                     §in§ = "finishLoad";
                     loop3:
                     while(true)
                     {
                        §>""§ = "questsFetched";
                        loop4:
                        while(true)
                        {
                           §^[§ = "conditionChange";
                           while(!_loc2_)
                           {
                              §#+§ = "stateChange";
                              loop6:
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc1_ || §[!&§)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       if(!_loc2_)
                                       {
                                          §6B§ = "stabilityFail";
                                          do
                                          {
                                             §#"5§ = "questCompleted";
                                             continue loop7;
                                          }
                                          while(_loc2_);
                                          
                                          return;
                                          addr36:
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private var §'!P§:String;
      
      private var §,!d§:String;
      
      private var §9!I§:String;
      
      public function §[!&§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      public function get §!!e§() : String
      {
         return this.§9!I§;
      }
      
      public function set §!!e§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!I§ = param1;
         }
      }
      
      public function get §4!2§() : String
      {
         return this.§'!P§;
      }
      
      public function set §4!2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'!P§ = param1;
         }
      }
      
      public function get §"!x§() : String
      {
         return this.§,!d§;
      }
      
      public function set §"!x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!d§ = param1;
         }
      }
   }
}
