package § ^§
{
   import §"n§.§<!e§;
   import §8!K§.§5!Y§;
   import §]0§.§=!_§;
   import §]0§.§>I§;
   import §^S§.§#!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §-U§ extends §#!X§ implements §>I§
   {
       
      
      private var §&C§:Boolean;
      
      protected var §;z§:Dictionary;
      
      private var §@P§:§=!_§;
      
      public function §-U§(param1:String, param2:§5!Y§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            while(true)
            {
               this.§;z§ = new Dictionary();
            }
            addr93:
         }
         loop1:
         while(true)
         {
            this.§&C§ = false;
            while(true)
            {
               if(false)
               {
                  return;
               }
               addr19:
               addr60:
               if(!(_loc4_ && this))
               {
                  continue loop1;
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
      }
      
      public function §&^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(true)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§@P§.load();
               }
            }
         }
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§>z§[param1])
            {
               if(!_loc2_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr54);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(_loc6_)
            {
               this.setTutorialSeen(_loc3_);
            }
         }
      }
      
      override public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setTutorialSeen(param1,param2);
            while(true)
            {
               if(_loc4_)
               {
                  this.§@P§.setTutorialSeen(param1,param2);
               }
               if(!_loc3_)
               {
                  addr56:
                  break;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §<=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(true)
            {
               if(_loc3_)
               {
                  this.§@P§.§<=§(param1);
               }
            }
         }
      }
      
      public function §[o§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@P§.§[o§(param1);
         }
      }
      
      public function §'!]§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@P§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§@P§);
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop().§'!]§();
         }
         addr59:
         return "";
      }
      
      override public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.setScoreForLevel(param1,param2);
            while(true)
            {
               if(_loc4_)
               {
                  this.§@P§.setScoreForLevel(param1,param2);
               }
               if(!(_loc3_ && this))
               {
                  addr66:
                  break;
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §+!9§() : Boolean
      {
         return this.§&C§;
      }
      
      public function set §+!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§&C§ = param1;
         }
      }
      
      public function §10§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!e§ = null;
         if(_loc3_ || this)
         {
            if(this.§;z§[param1])
            {
               _loc2_ = this.§;z§[param1];
               addr41:
               if(_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §@!Q§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!e§ = new §<!e§(param2);
         if(!(_loc4_ && param1))
         {
            this.§;z§[param1] = _loc3_;
         }
      }
   }
}
