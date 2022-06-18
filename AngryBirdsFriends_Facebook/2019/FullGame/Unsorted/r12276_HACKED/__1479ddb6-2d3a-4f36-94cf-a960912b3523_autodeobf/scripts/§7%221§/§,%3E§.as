package §7"1§
{
   import §#"3§.§4!h§;
   
   public class §,>§
   {
       
      
      private var §];§:String;
      
      private var §]$D§:Vector.<Function>;
      
      private var §["x§:Boolean;
      
      public function §,>§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§];§ = param1;
         this.§["x§ = param3;
         if(param2 != null)
         {
            §4!h§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §7`§() : String
      {
         return this.§];§;
      }
      
      public function §!!>§(param1:Boolean) : void
      {
         this.§["x§ = param1;
      }
      
      public function §6#9§() : Boolean
      {
         return this.§["x§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§]$D§ == null)
         {
            this.§]$D§ = new Vector.<Function>();
         }
         if(this.§]$D§.indexOf(param1) == -1)
         {
            this.§]$D§.push(param1);
         }
      }
      
      public function §`$ §(param1:Function) : void
      {
         if(this.§]$D§.indexOf(param1) > -1)
         {
            this.§]$D§.splice(this.§]$D§.indexOf(param1),1);
         }
      }
      
      public function §3#S§() : Vector.<Function>
      {
         return this.§]$D§;
      }
   }
}
