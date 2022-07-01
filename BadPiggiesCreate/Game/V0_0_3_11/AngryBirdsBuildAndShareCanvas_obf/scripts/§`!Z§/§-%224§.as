package §`!Z§
{
   import §0",§.§^!J§;
   import §1!v§.§@%§;
   import §1z§.§,!b§;
   import §@!P§.§,"5§;
   import §@!P§.§?"%§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §-"4§ extends EventDispatcher
   {
       
      
      protected var §]!=§:String = "";
      
      private var §"c§:Boolean = false;
      
      private var §7!9§:XML;
      
      private var §2>§:Vector.<String>;
      
      protected var §%!1§:Boolean = false;
      
      protected var §2h§:Vector.<§^!J§>;
      
      public function §-"4§(param1:§@%§, param2:XML)
      {
         var _loc3_:XML = null;
         this.§2>§ = new Vector.<String>();
         super();
         if(param2)
         {
            if(param2.hasOwnProperty("description"))
            {
               this.§]!=§ = param2.description[0].toString();
            }
            for each(_loc3_ in param2.prompt)
            {
               this.§2>§.push(_loc3_.toString());
            }
            this.§7!9§ = param2.inventory[0];
            this.§ C§(param1,param2);
         }
      }
      
      public static function §&!l§(param1:§@%§, param2:XML) : §-"4§
      {
         switch(param2["@type"].toString())
         {
            case "GhostObject":
               return new §9"1§(param1,param2);
            case "Connected":
               return new §##§(param1,param2);
            case "Request":
               return new §6!v§(param1,param2);
            default:
               return null;
         }
      }
      
      protected function § C§(param1:§@%§, param2:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§,"5§ = null;
         var _loc5_:§,"5§ = null;
         var _loc6_:§?"%§ = null;
         this.§2h§ = new Vector.<§^!J§>();
         for each(_loc3_ in param2.instruction)
         {
            if(_loc3_.hasOwnProperty("block"))
            {
               _loc4_ = new §,"5§(param2.instruction.block.toString());
            }
            else
            {
               if(!_loc3_.hasOwnProperty("object"))
               {
                  throw new Error("Instruction didn\'t specify a proper block or object for the starting point.");
               }
               _loc6_ = §,!b§.§3!-§(_loc3_.object.toString(),param1.objects);
               _loc4_ = new §,"5§(_loc6_);
            }
            _loc5_ = new §,"5§(new Point(_loc3_.x,_loc3_.y));
            this.§2h§.push(new §^!J§(_loc4_,_loc5_));
         }
      }
      
      public function get §,""§() : XML
      {
         return this.§7!9§;
      }
      
      public function refresh(param1:§@%§) : void
      {
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function getNextInstruction() : DisplayObject
      {
         if(!this.§2h§ || this.§2h§.length == 0)
         {
            return null;
         }
         return !!this.isCompleted ? null : this.§2h§[0];
      }
      
      public function update(param1:§@%§) : Boolean
      {
         return false;
      }
      
      public function isObjectNeeded(param1:§?"%§) : Boolean
      {
         return false;
      }
      
      public function get description() : String
      {
         return this.§]!=§;
      }
      
      public function get isCompleted() : Boolean
      {
         return this.§"c§;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this.§"c§ = param1;
      }
      
      public function §[t§() : String
      {
         return this.§2>§.length > 0 ? this.§2>§.shift() : null;
      }
      
      public function dispose() : void
      {
      }
      
      public function onPhysicsEnabled() : void
      {
      }
   }
}
