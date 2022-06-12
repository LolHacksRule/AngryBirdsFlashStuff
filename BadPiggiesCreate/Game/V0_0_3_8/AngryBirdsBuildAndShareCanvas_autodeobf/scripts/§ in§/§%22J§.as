package § in§
{
   import §%!&§.§'"-§;
   import §%h§.§5X§;
   import §+`§.§#'§;
   import §+`§.§^!p§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import §true§.§>"-§;
   import §var§.§&!y§;
   
   public class §"J§ extends EventDispatcher
   {
       
      
      protected var §53§:String = "";
      
      private var §%!n§:Boolean = false;
      
      private var §#!R§:XML;
      
      protected var §1!C§:Boolean = false;
      
      protected var §#E§:Vector.<§^!p§>;
      
      public function §"J§(param1:§5X§, param2:XML)
      {
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§53§ = param2.description[0].toString();
            }
            this.§#!R§ = param2.inventory[0];
         }
         this.§0J§(param1,param2);
      }
      
      public static function §;!f§(param1:§5X§, param2:XML) : §"J§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §"!b§(param1,param2);
            case "Connected":
               return new §=P§(param1,param2);
            case "Request":
               return new §"!o§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function §0J§(param1:§5X§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§#'§ = null;
         var _loc5_:§#'§ = null;
         var _loc6_:§>"-§ = null;
         this.§#E§ = new Vector.<§^!p§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §#'§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §&!y§.§3!m§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §#'§(_loc6_);
            }
            _loc5_ = new §#'§(new Point(_loc3_.x,_loc3_.y));
            this.§#E§.push(new §^!p§(_loc4_,_loc5_));
         }
      }
      
      public function get §#l§() : XML
      {
         return this.§#!R§;
      }
      
      public function refresh(param1:§5X§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§#E§ || this.§#E§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§#E§[0];
      }
      
      protected function §?!F§(param1:§>"-§, param2:§'"-§) : §>"-§
      {
         return §&!y§.§3!m§(param1.uniqueID,param2);
      }
      
      public function update(param1:§5X§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§>"-§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§53§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§%!n§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§%!n§ = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
