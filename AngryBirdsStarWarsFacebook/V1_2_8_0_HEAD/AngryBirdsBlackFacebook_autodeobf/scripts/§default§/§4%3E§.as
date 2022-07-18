package §default§
{
   import §#f§.§3@§;
   import §,;§.§8#,§;
   import §6=§.§+!,§;
   import §6Z§.§>"K§;
   import §>!c§.§?!;§;
   import §]!"§.§+"d§;
   import §]"U§.§ !X§;
   import com.furusystems.dconsole2.DConsole;
   
   public final class §4>§
   {
       
      
      private var §#L§:DConsole;
      
      private var §!!1§:§?!;§;
      
      private var §`#E§:Vector.<§`#O§>;
      
      private var §-"_§:§+"d§;
      
      private const §[!E§:Vector.<§2!n§> = new Vector.<§2!n§>();
      
      private var §5"F§:§ !X§;
      
      public function §4>§(param1:DConsole, param2:§?!;§, param3:§+"d§, param4:§ !X§)
      {
         super();
         this.§5"F§ = param4;
         this.§!!1§ = param2;
         this.§#L§ = param1;
         this.§-"_§ = param3;
         this.§`#E§ = new Vector.<§`#O§>();
      }
      
      public function §%C§(param1:§`#O§, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§`#E§.length)
         {
            if(this.§`#E§[_loc3_].trigger == param1.trigger)
            {
               throw new ArgumentError("Duplicate command trigger phrase: " + param1.trigger + " already in use");
            }
            _loc3_++;
         }
         param1.includeInHistory = param2;
         this.§`#E§.push(param1);
         this.§`#E§.sort(this.§5!d§);
      }
      
      public function §=#I§(param1:String) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`#E§.length)
         {
            if(this.§`#E§[_loc2_].trigger == param1)
            {
               this.§`#E§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      private function §5!d§(param1:§`#O§, param2:§`#O§) : int
      {
         if(param1.grouping == param2.grouping)
         {
            return -1;
         }
         return 1;
      }
      
      public function §else §(param1:String, param2:Function = null, param3:Boolean = false) : *
      {
         var args:Array = null;
         var val:* = undefined;
         var commandArgs:Vector.<§2!n§> = null;
         var input:String = param1;
         var overrideFunc:Function = param2;
         var sub:Boolean = param3;
         var cmdStr:String = §3@§.§6""§(input);
         try
         {
            args = §8#,§.slice(cmdStr);
         }
         catch(e:Error)
         {
            throw e;
         }
         var str:String = args.shift().toLowerCase();
         var commandObject:§`#O§ = null;
         var i:int = this.§`#E§.length;
         while(i--)
         {
            if(this.§`#E§[i].trigger.toLowerCase() == str)
            {
               commandObject = this.§`#E§[i];
               break;
            }
         }
         if(commandObject != null)
         {
            if(commandObject is §4!<§)
            {
               commandArgs = this.§]+§(args);
            }
            else
            {
               commandArgs = this.§[E§(args,commandObject is §=W§);
            }
            try
            {
               val = this.§;#@§(commandObject,commandArgs,sub);
               if(!sub)
               {
                  if(commandObject.includeInHistory)
                  {
                     this.§!!1§.§&!4§(input);
                  }
               }
            }
            catch(e:Error)
            {
               throw e;
            }
            if(!sub && val != null && val != undefined)
            {
               this.§#L§.§""W§(val);
            }
            return val;
         }
         throw new §>"K§("\'" + str + "\' is not a command.");
      }
      
      private function §?!u§(param1:Vector.<§2!n§>) : String
      {
         var _loc3_:§2!n§ = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.data + ", ";
         }
         return _loc2_;
      }
      
      public function §]+§(param1:Array) : Vector.<§2!n§>
      {
         var _loc4_:§2!n§ = null;
         var _loc2_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            (_loc4_ = new §2!n§("",this,this.§-"_§,this.§5"F§,false)).data = param1[_loc3_];
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §[E§(param1:Array, param2:Boolean = false) : Vector.<§2!n§>
      {
         var _loc3_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.push(new §2!n§(param1[_loc4_],this,this.§-"_§,this.§5"F§,param2 && _loc4_ == 0));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §+A§(param1:Function, param2:Array) : *
      {
         var _loc6_:§2!n§ = null;
         var _loc3_:§7#,§ = new §7#,§("",param1);
         var _loc4_:Vector.<§2!n§> = new Vector.<§2!n§>();
         var _loc5_:int = 0;
         while(_loc5_ < param2.length)
         {
            (_loc6_ = new §2!n§("",this,this.§-"_§,this.§5"F§,false)).data = param2[_loc5_];
            _loc4_.push(_loc6_);
            _loc5_++;
         }
         return this.§;#@§(_loc3_,_loc4_,true);
      }
      
      public function §;#@§(param1:§`#O§, param2:Vector.<§2!n§> = null, param3:Boolean = false) : *
      {
         var args:Array = null;
         var val:* = undefined;
         var func:§7#,§ = null;
         var joint:String = null;
         var command:§`#O§ = param1;
         var commandArgs:Vector.<§2!n§> = param2;
         var sub:Boolean = param3;
         if(!commandArgs)
         {
            commandArgs = this.§[!E§;
         }
         args = [];
         var i:int = 0;
         while(i < commandArgs.length)
         {
            args.push(commandArgs[i].data);
            i++;
         }
         if(command is §7#,§)
         {
            func = command as §7#,§;
            try
            {
               val = func.callback.apply(this,args);
               return val;
            }
            catch(e:ArgumentError)
            {
               try
               {
                  joint = args.join(" ");
                  if(joint.length > 0)
                  {
                     val = func.callback.call(this,joint);
                  }
                  else
                  {
                     val = func.callback.call(this);
                  }
                  return val;
               }
               catch(e:Error)
               {
                  §#L§.§""W§(e.message,§+!,§.ERROR);
                  return null;
               }
            }
            catch(e:Error)
            {
               §#L§.§""W§(e.getStackTrace(),§+!,§.ERROR);
               return null;
            }
         }
         else
         {
            this.§#L§.§""W§("Abstract command, no action",§+!,§.ERROR);
            return null;
         }
      }
      
      public function §0#]§(param1:String = null) : void
      {
         var _loc4_:String = null;
         var _loc2_:String = "Available commands: ";
         if(param1)
         {
            _loc2_ += " (search for \'" + param1 + "\')";
         }
         this.§#L§.§""W§(_loc2_,§+!,§.§>y§);
         var _loc3_:int = 0;
         for(; _loc3_ < this.§`#E§.length; _loc3_++)
         {
            if(param1)
            {
               if((_loc4_ = this.§`#E§[_loc3_].grouping + this.§`#E§[_loc3_].trigger + this.§`#E§[_loc3_].helpText + this.§`#E§[_loc3_].returnType).toLowerCase().indexOf(param1) == -1)
               {
                  continue;
               }
            }
            this.§#L§.§""W§("\t--> " + this.§`#E§[_loc3_].grouping + " : " + this.§`#E§[_loc3_].trigger,§+!,§.§>y§);
         }
      }
      
      public function § `§(param1:String) : §`#O§
      {
         var _loc2_:int = this.§`#E§.length;
         while(_loc2_--)
         {
            if(this.§`#E§[_loc2_].trigger.toLowerCase() == param1.split(" ")[0].toLowerCase())
            {
               return this.§`#E§[_loc2_];
            }
         }
         throw new Error("No command found");
      }
      
      public function §["K§(param1:String) : *
      {
         return param1;
      }
      
      public function §==§(param1:String) : Vector.<String>
      {
         var _loc5_:§`#O§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:String = param1.toLowerCase();
         var _loc4_:int = 0;
         while(_loc4_ < this.§`#E§.length)
         {
            if((_loc5_ = this.§`#E§[_loc4_]).trigger.toLowerCase().indexOf(_loc3_,0) > -1)
            {
               _loc2_.push(_loc5_.trigger);
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
