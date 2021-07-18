package §9y§
{
   import flash.events.Event;
   
   public class EpisodeButtonEvent extends Event
   {
      
      public static const § for§:String = "EpisodeButtonEvent.OnLevelClick";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § for§ = "EpisodeButtonEvent.OnLevelClick";
         }
      }
      
      private var §'!D§:String;
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var § r§:§><§;
      
      public function EpisodeButtonEvent(param1:String, param2:String, param3:Number, param4:Number, param5:§><§, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param6,param7);
            loop0:
            while(true)
            {
               this.§'!D§ = param2;
               loop1:
               while(true)
               {
                  this.§""4§ = param3;
                  while(_loc8_)
                  {
                     while(_loc8_ || param2)
                     {
                        this.§ r§ = param5;
                        if(_loc8_)
                        {
                           if(!_loc9_)
                           {
                              return;
                              addr31:
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§%W§ = param4;
            §§goto(addr46);
         }
         §§goto(addr31);
      }
      
      public function get levelName() : String
      {
         return this.§'!D§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get button() : §><§
      {
         return this.§ r§;
      }
   }
}
