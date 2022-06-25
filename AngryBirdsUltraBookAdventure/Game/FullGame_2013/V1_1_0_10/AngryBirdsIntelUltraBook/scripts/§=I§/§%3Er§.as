package §=I§
{
   import §=`§.§6!I§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class §>r§ extends §?!t§
   {
       
      
      private var §,!8§:String;
      
      private var §5>§:Boolean;
      
      private var §'9§:Number;
      
      private var §;E§:int;
      
      public function §>r§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.§,!8§ = param3;
               addr67:
               if(_loc8_ || param1)
               {
                  this.§;E§ = param6;
                  addr74:
                  if(!_loc8_)
                  {
                     while(_loc8_ || param1)
                     {
                        §§goto(addr67);
                        §§goto(addr74);
                     }
                     while(_loc8_ || param1)
                     {
                        this.§'9§ = param5;
                        §§goto(addr50);
                     }
                     addr50:
                     while(true)
                     {
                        this.§5>§ = param4;
                        §§goto(addr79);
                     }
                     addr79:
                     addr91:
                  }
                  return;
               }
            }
         }
         §§goto(addr91);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     addr73:
                     §-!Q§.§#3§(this.§,!8§);
                  }
                  §§push(false);
                  break;
               }
               §§push(false);
               if(!_loc5_)
               {
                  break;
               }
               if(_loc5_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr73);
      }
      
      override public function clone() : §?!t§
      {
         return new §>r§(time,duration,this.§,!8§,this.§5>§,this.§'9§,this.§;E§);
      }
   }
}
