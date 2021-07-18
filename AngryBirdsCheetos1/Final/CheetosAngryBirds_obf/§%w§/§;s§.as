package §%w§
{
   import § !G§.§+!7§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §-H§.§&c§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;s§ extends §&c§ implements §3n§
   {
      
      public static const § K§:Number = 1;
      
      public static const §83§:Number = 2;
      
      public static const §%=§:Number = 3;
      
      public static const §#!+§:Number = 4;
      
      public static const §6g§:Number = 5;
      
      public static const §@D§:Number = 6;
      
      public static const §<!$§:Number = 7;
      
      public static const §8v§:Number = 8;
      
      public static const §4!F§:Number = 9;
      
      public static const §2h§:Number = 10;
      
      public static const §`!U§:Number = 11;
      
      public static const §9!Z§:Number = 12;
      
      public static const §8!U§:Number = 13;
      
      public static var §2!%§:Array;
      
      private static var §!3§:Class;
      
      public static var sCheetosPopups:§0!U§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §;s§))
         {
            § K§ = 1;
            while(true)
            {
               §83§ = 2;
               while(!(_loc1_ && _loc2_))
               {
                  §6g§ = 5;
                  loop4:
                  while(true)
                  {
                     §@D§ = 6;
                     loop5:
                     while(true)
                     {
                        §<!$§ = 7;
                        loop6:
                        while(true)
                        {
                           §8v§ = 8;
                           addr141:
                           while(true)
                           {
                              §4!F§ = 9;
                              addr127:
                              while(_loc2_)
                              {
                                 continue loop4;
                              }
                              addr115:
                              continue loop6;
                              while(_loc2_ || _loc2_)
                              {
                                 §`!U§ = 11;
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      public function §;s§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            loop0:
            for(; sCheetosPopups == null; if(!_loc2_)
            {
               continue;
            },sCheetosPopups = new §0!U§())
            {
               if(!_loc1_)
               {
                  continue;
               }
               addr67:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               this.addExternalInterfaceCallbacks();
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      protected function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §,!A§.addCallback("navigationAttempt",this.navigationAttempt);
         }
      }
      
      protected function navigationAttempt(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var url:String = param1;
         if(_loc4_ || _loc2_)
         {
            §9!H§.§;a§ = url;
         }
         try
         {
            §,!A§.§9!M§("navigationConfirmed",§9!H§.§;a§);
         }
         catch(e:Error)
         {
         }
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            sCheetosPopups.§3S§(§+!7§.§5]§(§!3§),§3t§.container,null,this);
         }
         do
         {
            §3t§.container.addComponent(sCheetosPopups.container);
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,!A§.§]Q§("navigationAttempt",this.navigationAttempt);
            while(true)
            {
               §3t§.container.removeComponent(sCheetosPopups.container);
               addr60:
               if(!(_loc1_ && _loc2_))
               {
                  super.deActivate();
                  addr67:
                  if(_loc1_ && _loc2_)
                  {
                     while(_loc2_ || _loc1_)
                     {
                        §§goto(addr60);
                        §§goto(addr67);
                     }
                     while(true)
                     {
                        sCheetosPopups.deActivate();
                        §§goto(addr53);
                     }
                     addr53:
                     addr84:
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[2] = null;
            addr70:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
